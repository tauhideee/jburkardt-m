function normal_test09 ( )

%*****************************************************************************80
%
%% NORMAL_TEST09 tests R8_NORMAL_01.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    28 June 2006
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'NORMAL_TEST09\n' );
  fprintf ( 1, '  R8_NORMAL_01 computes normally distributed\n' );
  fprintf ( 1, '  pseudorandom numbers.\n' );

  seed = 12345;
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Initial SEED = %d\n', seed );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  First 10 values:\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '       I         Input        Output     R8_NORMAL_01\n' );
  fprintf ( 1, '                  SEED          SEED\n' );
  fprintf ( 1, '\n' );

  for i = 1 : 10

    seed_in = seed;
    [ u(i), seed ] = r8_normal_01 ( seed );
    seed_out = seed;

    fprintf ( 1, '  %6d  %12d  %12d  %14f\n', i, seed_in, seed_out, u(i) );

  end

  N = 1000;

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Now call R8_NORMAL_01 %d times.\n', N );
  fprintf ( 1, '\n' );

  u_avg = 0.0;
  for i = 1: N
    [ u(i), seed ] = r8_normal_01 ( seed );
  end
  u_avg = sum ( u(1:N) ) / N;

  u_var = 0.0;
  for i = 1 : N
    u_var = u_var + ( u(i) - u_avg )^2;
  end
  u_var = u_var / ( N - 1 );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Average value = %f\n', u_avg );
  fprintf ( 1, '  Expecting       %f\n', 0.0 );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Variance =      %f\n', u_var );
  fprintf ( 1, '  Expecting       %f\n', 1.0 );

  return
end