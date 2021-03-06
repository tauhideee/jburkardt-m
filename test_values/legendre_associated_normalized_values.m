function [ n_data, n, m, x, fx ] = legendre_associated_normalized_values ...
  ( n_data )

%*****************************************************************************80
%
%% LEGENDRE_ASSOCIATED_NORMALIZED_VALUES: normalized associated Legendre.
%
%  Discussion:
%
%    The function considered is the associated Legendre polynomial P^M_N(X).
%
%    In Mathematica, the function can be evaluated by:
%
%      LegendreP [ n, m, x ]
%
%    The function is normalized by dividing by
%
%      sqrt ( 2 * ( n + m )! / ( 2 * n + 1 ) / ( n - m )! )
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    10 March 2012
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Milton Abramowitz, Irene Stegun,
%    Handbook of Mathematical Functions,
%    National Bureau of Standards, 1964,
%    ISBN: 0-486-61272-4,
%    LC: QA47.A34.
%
%    Stephen Wolfram,
%    The Mathematica Book,
%    Fourth Edition,
%    Cambridge University Press, 1999,
%    ISBN: 0-521-64314-7,
%    LC: QA76.95.W65.
%
%  Parameters:
%
%    Input/output, integer N_DATA.  The user sets N_DATA to 0
%    before the first call.  On each call, the routine increments N_DATA by 1,
%    and returns the corresponding data; when there is no more data, the
%    output value of N_DATA will be 0 again.
%
%    Output, integer N, integer M, real X,
%    the arguments of the function.
%
%    Output, real FX, the value of the function.
%
  n_max = 21;

  fx_vec = [ ...
    0.7071067811865475E+00, ...
    0.6123724356957945E+00, ...
   -0.7500000000000000E+00, ...
   -0.1976423537605237E+00, ...
   -0.8385254915624211E+00, ...
    0.7261843774138907E+00, ...
   -0.8184875533567997E+00, ...
   -0.1753901900050285E+00, ...
    0.9606516343087123E+00, ...
   -0.6792832849776299E+00, ...
   -0.6131941618102092E+00, ...
    0.6418623720763665E+00, ...
    0.4716705890038619E+00, ...
   -0.1018924927466445E+01, ...
    0.6239615396237876E+00, ...
    0.2107022704608181E+00, ...
    0.8256314721961969E+00, ...
   -0.3982651281554632E+00, ...
   -0.7040399320721435E+00, ...
    0.1034723155272289E+01, ...
   -0.5667412129155530E+00 ]';
  m_vec = [ ...
    0, 0, 1, 0, ...
    1, 2, 0, 1, ...
    2, 3, 0, 1, ...
    2, 3, 4, 0, ...
    1, 2, 3, 4, ...
    5 ]';
  n_vec = [ ...
    0,  1,  1,  2, ...
    2,  2,  3,  3, ...
    3,  3,  4,  4, ...
    4,  4,  4,  5, ...
    5,  5,  5,  5, ...
    5 ]';
  x_vec = [ ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50, ...
    0.50 ]';

  if ( n_data < 0 )
    n_data = 0;
  end

  n_data = n_data + 1;

  if ( n_max < n_data )
    n_data = 0;
    n = 0;
    m = 0;
    x = 0.0;
    fx = 0.0;
  else
    n = n_vec(n_data);
    m = m_vec(n_data);
    x = x_vec(n_data);
    fx = fx_vec(n_data);
  end

  return
end
