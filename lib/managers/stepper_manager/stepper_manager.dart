class StepperManager {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  increment() {
    _currentIndex++;
  }

  decrement() {
    _currentIndex--;
  }
}
