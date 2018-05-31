#include <iostream>
#include <benchmark/benchmark.h>
void BM_diagnostic_test(benchmark::State& state) {
    static bool called_once = false;
    if (called_once == false) try_invalid_pause_resume(state);

    while (state.KeepRunning()) {
        benchmark::DoNotOptimize(state.iterations());
    }

    if (called_once == false) try_invalid_pause_resume(state);

    called_once = true;
}
BENCHMARK(BM_diagnostic_test);

int main(int argc, char* argv[]) {
    benchmark::internal::GetAbortHandler() = &TestHandler;
    benchmark::Initialize(&argc, argv);
    benchmark::RunSpecifiedBenchmarks();
}