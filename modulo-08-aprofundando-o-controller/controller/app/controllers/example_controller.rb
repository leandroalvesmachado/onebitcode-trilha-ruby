class ExampleController < ApplicationController
  before_action :start_timer, only: [:time_sensitive_action]
  after_action :stop_timer, only: [:time_sensitive_action]

  def time_sensitive_action
    # Ação cujo tempo de execução será medido
    sleep(2)  # Simulando uma ação que leva algum tempo para ser executada
    render plain: "Ação concluída!"
  end

  private

  def start_timer
    @start_time = Time.now
    puts "Tempo de início: #{@start_time} segundos"
  end

  def stop_timer
    @end_time = Time.now
    puts "Tempo final: #{@end_time} segundos"
    elapsed_time = @end_time - @start_time
    puts "Tempo de execução: #{elapsed_time} segundos"
  end
end
