=begin
                           Start: Wednesday 4 May 2016 05:45 am, Monterrey, México.
                    Last Updated: Wednesday 4 May 2016 06:53 am, Monterrey, México.

                Developed by   Abraham Elizondo   elizondo.abraham@gmail.com
                                  FullStack Web Developer

    -   Back-end:   MySQL with stored procedures, XML archives, PHP, Python, Ruby.
    -   Frontend:   HTML5/CSS3, Javascript, frameworks(jQuery,Bootstrap,AngularJS).
    -   O.Systems:  GNU/Linux(Ubuntu 8, Debian 6), BSD(FreeBSD 6), UNIX(QNX 6),
                    Windows(95,98,XP,8), and Raspbian for RaspberryPI2.
    -   Extra:  Shell Scripting,C,C++,Java,Apache servers,SVN,Git,MatLab,LaTex, etc.

=end
require 'date'
class Header
    def initialize(fecha_clt)
        fecha_srv = Time.now()
        @data = nil
        @borde = "---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---*---"
        @autor = "\n\t\t\tDeveloped by\t\tAbraham Elizondo"
        @contacto = "\n\t\t   Full Stack Developer\t\telizondo.abraham@gmail.com"
        @fecha_cliente_ = "\n\tAbraham's Date(client PC) [start]: \t  "+fecha_clt.strftime("%Y-%m-%d %H:%M:%S")+" Mexico"
        @fecha_server_ = "\n\t  Codecademy Date(server) [ end ]: \t  "+fecha_srv.inspect+".\n"
        @data = @borde+@autor+@contacto+@fecha_cliente_+@fecha_server_+@borde
    end
    
    def prinT
       puts @data
    end
end
header = Header.new(DateTime.parse("2016-05-04 05:45:00").to_date)
unless !header.nil?
    puts "Null Header" 
else
    header.prinT
    puts "\n"
end

def calc_grains(n,m)
    total = 1
    (1...Integer(n)**2).each do |i|
        total += Float(m)**i
    end
    return total
end

puts "- Please enter the length of the side of the board: "
side = gets
puts "- Enter the multiplier between squares: "
multiplier = gets
puts calc_grains(side,multiplier)
