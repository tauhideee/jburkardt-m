function v = haar_1d ( n, u )

%*****************************************************************************80
%
%% HAAR_1D computes the Haar transform of a vector.
%
%  Discussion:
%
%    Thanks to Stephen Becker for pointing out that a previous version of
%    the haar_1d code was not inverted by haar_1d_inverse in cases where
%    M and N were not powers of 2, 05 March 2014.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    05 March 2014
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer N, the length of the vector.
%
%    Input, real U(N,1), the vector to be transformed.
%
%    Output, real V(N,1), the transformed vector.
%
  v = u(:);

  s = sqrt ( 2.0 );

  w = zeros ( n, 1 );
%
%  Determine K, the largest power of 2 such that K <= N.
%
  k = 1;
  while ( k * 2 <= n )
    k = k * 2;
  end

  while ( 1 < k )
  
    k = floor ( k / 2 );

    w(  1:  k) = ( v(1:2:2*k-1) + v(2:2:2*k) ) / s;
    w(k+1:k+k) = ( v(1:2:2*k-1) - v(2:2:2*k) ) / s;

    v(1:2*k) = w(1:2*k);

  end

  return
end
