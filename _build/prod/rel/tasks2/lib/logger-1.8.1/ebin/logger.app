{application,logger,
             [{applications,[kernel,stdlib,elixir]},
              {description,"logger"},
              {modules,['Elixir.Logger','Elixir.Logger.App',
                        'Elixir.Logger.BackendSupervisor',
                        'Elixir.Logger.Backends.Console',
                        'Elixir.Logger.Config','Elixir.Logger.ErlangHandler',
                        'Elixir.Logger.ErrorHandler',
                        'Elixir.Logger.Formatter','Elixir.Logger.Translator',
                        'Elixir.Logger.Utils','Elixir.Logger.Watcher']},
              {vsn,"1.8.1"},
              {registered,['Elixir.Logger','Elixir.Logger.Supervisor',
                           'Elixir.Logger.Watcher']},
              {mod,{'Elixir.Logger.App',[]}},
              {env,[{level,debug},
                    {utc_log,false},
                    {truncate,8096},
                    {backends,[console]},
                    {translators,[{'Elixir.Logger.Translator',translate}]},
                    {sync_threshold,20},
                    {discard_threshold,500},
                    {handle_otp_reports,true},
                    {handle_sasl_reports,false},
                    {discard_threshold_for_error_logger,500},
                    {compile_time_purge_level,debug},
                    {compile_time_purge_matching,[]},
                    {compile_time_application,nil},
                    {translator_inspect_opts,[]},
                    {console,[]}]}]}.
