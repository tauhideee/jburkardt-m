%% FEM2D_FSU uses the fsuClusterMatlab command to run the FEM2D computation.
%
%  Discussion:
%
%    The arguments to fsuClusterMatlab mean:
%
%    [] allows us to specify an output directory;
%    [] allows us to specify switches to the MOAB queue handler, such as more time.
%    'm" indicates this is an "MPI-like" job;
%    'w' indicates that the MATLAB session should wait for completion;
%    4 is the number of processors requested;
%    @fem2d_fun indicates the function we want to execute;
%    { param } contains input arguments.
%
%    The function "fem2d_fun" must correspond to a MATLAB M-file "fem2d_fun.m"
%    and that file must be in MATLAB's path.
%
%    The easiest way to ensure that the file is in MATLAB's path is to
%    create a subdirectory called "matlab" immediately below your home directory,
%    and place the function file there (as well as any other files needed by the job).
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    26 March 2010
%
%  Author:
%
%    John Burkardt
%
  param = p_data ( );

  fsuClusterMatlab ( [], [], 'm', 'w', 4, @fem2d_fun, { param } )
