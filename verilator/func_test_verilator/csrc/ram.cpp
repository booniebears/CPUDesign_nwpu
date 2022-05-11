#include"common.h"

const long RAM_DEPTH = 262144;
static uint32_t ram[RAM_DEPTH];
static pthread_mutex_t ram_mutex;

void init_ram(const char* coe_file) {
	assert(coe_file != NULL);
	printf("The coe file is [%s], loading ...\n", coe_file);
	FILE *fp = fopen(coe_file, "r");
	if(fp == NULL) {
		printf("Can not open %s\n", coe_file);
		assert(0);
	}

	// check header
	char line[256];
	char *head1 = "memory_initialization_radix = 16;\n";
	char *head2 = "memory_initialization_vector =\n";
	// first line
	fgets(line, 255, fp);
	assert(strcmp(head1, line) == 0);
	// second line
	fgets(line, 255, fp);
	assert(strcmp(head2, line) == 0);

	// init ram
	for(int i = 0; i < RAM_DEPTH; i++){
		fscanf(fp, "%x", &ram[i]);
	}

	fclose(fp);
	printf("Init ram finish\n");
}


extern "C" uint32_t ram_read_helper(uint8_t en, uint32_t rIdx) {
  if (!ram)
    return 0;
  if (en && rIdx >= RAM_DEPTH) {
    rIdx %= RAM_DEPTH / sizeof(uint32_t);
  }
  pthread_mutex_lock(&ram_mutex);
  uint32_t rdata = (en) ? ram[rIdx] : 0;
  pthread_mutex_unlock(&ram_mutex);
  return rdata;
}

extern "C" void ram_write_helper(uint32_t wIdx, uint32_t wdata, uint32_t wmask, uint8_t wen) {
  if (wen && ram) {
    if (wIdx >= RAM_DEPTH) {
      printf("ERROR: ram wIdx = 0x%x out of bound!\n", wIdx);
      assert(wIdx < RAM_DEPTH);
    }
    pthread_mutex_lock(&ram_mutex);
    ram[wIdx] = (ram[wIdx] & ~wmask) | (wdata & wmask);
    pthread_mutex_unlock(&ram_mutex);
  }
}
