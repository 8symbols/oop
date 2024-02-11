void main() {
  var command = 'OPEN';

  switch (command) {
    case 'OPEN':
      print('open');
      continue newCase;
    case 'DENIED':
    case 'CLOSED':
      print('closed');
    newCase:
    case 'PENDING':
      print('pending');
    default:
      print('default');
  }
}
