OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
cx q[1], q[0];
cx q[3], q[2];
cx q[3], q[1];
ccx q[1], q[2], q[3];
barrier q[0], q[1], q[2];
barrier q[0], q[1], q[2];
cx q[0], q[2];
cx q[0], q[1];
