// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class S { }
class M1 { foo() => 42; }
typedef M2 = S with M1;
typedef C = S with M2;

main() {
  var c = new C();
  Expect.isTrue(c is S);
  Expect.isTrue(c is M1);
  Expect.isTrue(c is M2);
  Expect.isTrue(c is C);
  Expect.equals(42, c.foo());
}
