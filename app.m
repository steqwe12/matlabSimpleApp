classdef rad_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        Menu                            matlab.ui.container.Menu
        ExitMenu                        matlab.ui.container.Menu
        TabGroup                        matlab.ui.container.TabGroup
        CrtanjegrafikaTab               matlab.ui.container.Tab
        UIAxes                          matlab.ui.control.UIAxes
        CrtajButton                     matlab.ui.control.Button
        EditField                       matlab.ui.control.NumericEditField
        aLabel                          matlab.ui.control.Label
        DiskretanButton                 matlab.ui.control.StateButton
        KorakSpinnerLabel               matlab.ui.control.Label
        KorakSpinner                    matlab.ui.control.Spinner
        ButtonGroup                     matlab.ui.container.ButtonGroup
        AsinaxButton                    matlab.ui.control.RadioButton
        AcosaxButton                    matlab.ui.control.RadioButton
        AtanaxButton                    matlab.ui.control.RadioButton
        Asinax2Button                   matlab.ui.control.RadioButton
        Acosax2Button                   matlab.ui.control.RadioButton
        Atanax2Button                   matlab.ui.control.RadioButton
        AmplitudaSliderLabel            matlab.ui.control.Label
        AmplitudaSlider                 matlab.ui.control.Slider
        KalkulatorTab                   matlab.ui.container.Tab
        but7                            matlab.ui.control.Button
        but8                            matlab.ui.control.Button
        but9                            matlab.ui.control.Button
        but4                            matlab.ui.control.Button
        but5                            matlab.ui.control.Button
        but6                            matlab.ui.control.Button
        but1                            matlab.ui.control.Button
        but2                            matlab.ui.control.Button
        but3                            matlab.ui.control.Button
        butc                            matlab.ui.control.Button
        but0                            matlab.ui.control.Button
        butdot                          matlab.ui.control.Button
        buteq                           matlab.ui.control.Button
        butmul                          matlab.ui.control.Button
        buttake                         matlab.ui.control.Button
        butadd                          matlab.ui.control.Button
        butdiv                          matlab.ui.control.Button
        Label                           matlab.ui.control.Label
        GraphicalUserInterfaceMatlabLabel  matlab.ui.control.Label
        Label_2                         matlab.ui.control.Label
        LiteraturawwwmathworkscomLabel  matlab.ui.control.Label
    end

    
    properties (Access = private)
        dotNum;
        enDot=0;
        intNum=0;
        n1;
        n2;
        oper;
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Menu selected function: ExitMenu
        function ExitMenuSelected(app, event)
            closereq
        end

        % Button pushed function: CrtajButton
        function CrtajButtonPushed(app, event)
            a=app.EditField.Value;
            
           if(app.AsinaxButton.Value==true)
               if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*sin(a*x);
            plot(app.UIAxes,x,y);
               else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*sin(a*x);
            plot(app.UIAxes,x,y,'o');  
               end
               
           elseif(app.AcosaxButton.Value==true)
           if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*cos(a*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*cos(a*x);
            plot(app.UIAxes,x,y,'o');  
           end
           
           elseif(app.AtanaxButton.Value==true)
            if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*tan(a*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*tan(a*x);
            plot(app.UIAxes,x,y,'o');  
           end
           
           elseif(app.Asinax2Button.Value==true)
             if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*sin(a*x.*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*sin(a*x.*x);
            plot(app.UIAxes,x,y,'o');  
             end
             
           elseif(app.Acosax2Button.Value==true)
            if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*cos(a*x.*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*cos(a*x.*x);
            plot(app.UIAxes,x,y,'o');  
           end  
                           
           elseif(app.Atanax2Button.Value==true)
            if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*tan(a*x.*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*tan(a*x.*x);
            plot(app.UIAxes,x,y,'o');  
           end
               
           end
           
           
          
        
        end

        % Button pushed function: but1
        function but1ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '1'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '1']; 
            end                  
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: but2
        function but2ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '2'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '2']; 
            end 
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: but3
        function but3ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '3'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '3']; 
            end 
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: but4
        function but4ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '4'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '4']; 
            end 
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: but5
        function but5ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '5'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '5']; 
            end 
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: but6
        function but6ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '6'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '6']; 
            end 
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: but7
        function but7ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '7'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '7']; 
            end 
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: but8
        function but8ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '8'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '8']; 
            end 
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: but9
        function but9ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '9'];
                a=[num2str(app.intNum) '.' app.dotNum];
            else    
                a=[app.Label.Text '9']; 
            end 
            b=str2num(a);
            app.Label.Text=num2str(b);
        end

        % Button pushed function: butdot
        function butdotButtonPushed(app, event)
            app.enDot=1;
            app.intNum=str2num(app.Label.Text);
            
            a=[num2str(app.intNum) '.'];
            
            app.Label.Text=num2str(a);
        end

        % Button pushed function: but0
        function but0ButtonPushed(app, event)
            if(app.oper=='c')
                app.oper='';
                app.Label.Text='0';
            end
            a='0';
            if app.enDot==1
                app.dotNum=[app.dotNum '0'];
                a=[num2str(app.intNum) '.' app.dotNum];
                
                app.Label.Text=a;
            else    
                a=[app.Label.Text '0']; 
                b=str2num(a);
                app.Label.Text=num2str(b);
            end 
            
        end

        % Button pushed function: butc
        function butcButtonPushed(app, event)
            app.Label.Text='0';
            app.intNum=0;
            app.dotNum='';
            app.enDot=0;
        end

        % Button pushed function: butadd
        function butaddButtonPushed(app, event)
            app.oper='+';
            app.n1=str2num(app.Label.Text);
            app.Label.Text='0';
            app.intNum=0;
            app.dotNum='';
            app.enDot=0;
        end

        % Button pushed function: buttake
        function buttakeButtonPushed(app, event)
            app.oper='-';
            app.n1=str2num(app.Label.Text);
            app.Label.Text='0';
            app.intNum=0;
            app.dotNum='';
            app.enDot=0;
        end

        % Button pushed function: butdiv
        function butdivButtonPushed(app, event)
            app.oper='/';
            app.n1=str2num(app.Label.Text);
            app.Label.Text='0';
            app.intNum=0;
            app.dotNum='';
            app.enDot=0;
        end

        % Button pushed function: butmul
        function butmulButtonPushed(app, event)
            app.oper='x';
            app.n1=str2num(app.Label.Text);
            app.Label.Text='0';
            app.intNum=0;
            app.dotNum='';
            app.enDot=0;
        end

        % Button pushed function: buteq
        function buteqButtonPushed(app, event)
            app.n2=str2num(app.Label.Text);
            
            if app.oper=='+'
                app.Label.Text=num2str(app.n1+app.n2);
            elseif app.oper=='-'
                app.Label.Text=num2str(app.n1-app.n2);
            elseif app.oper=='x'
                app.Label.Text=num2str(app.n1*app.n2);
            elseif app.oper=='/'
                app.Label.Text=num2str(app.n1/app.n2);
            end
            
            
            app.intNum=0;
            app.dotNum='';
            app.enDot=0;
            app.oper='c';
        end

        % Value changing function: AmplitudaSlider
        function AmplitudaSliderValueChanging(app, event)
            changingValue = event.Value;
                
        end

        % Value changed function: AmplitudaSlider
        function AmplitudaSliderValueChanged(app, event)
            value = app.AmplitudaSlider.Value;
            
            a=app.EditField.Value;
            
           if(app.AsinaxButton.Value==true)
               if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*sin(a*x);
            plot(app.UIAxes,x,y);
               else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*sin(a*x);
            plot(app.UIAxes,x,y,'o');  
               end
               
           elseif(app.AcosaxButton.Value==true)
           if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*cos(a*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*cos(a*x);
            plot(app.UIAxes,x,y,'o');  
           end
           
           elseif(app.AtanaxButton.Value==true)
            if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*tan(a*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*tan(a*x);
            plot(app.UIAxes,x,y,'o');  
           end
           
           elseif(app.Asinax2Button.Value==true)
             if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*sin(a*x.*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*sin(a*x.*x);
            plot(app.UIAxes,x,y,'o');  
             end
             
           elseif(app.Acosax2Button.Value==true)
            if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*cos(a*x.*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*cos(a*x.*x);
            plot(app.UIAxes,x,y,'o');  
           end  
                           
           elseif(app.Atanax2Button.Value==true)
            if(app.DiskretanButton.Value==0)
            x=0:0.01:2*pi;
            y=app.AmplitudaSlider.Value*tan(a*x.*x);
            plot(app.UIAxes,x,y);
           else
            x=0:app.KorakSpinner.Value:2*pi;
            y=app.AmplitudaSlider.Value*tan(a*x.*x);
            plot(app.UIAxes,x,y,'o');  
            end
           end
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 699 598];
            app.UIFigure.Name = 'UI Figure';

            % Create Menu
            app.Menu = uimenu(app.UIFigure);
            app.Menu.Text = 'Menu';

            % Create ExitMenu
            app.ExitMenu = uimenu(app.Menu);
            app.ExitMenu.MenuSelectedFcn = createCallbackFcn(app, @ExitMenuSelected, true);
            app.ExitMenu.Text = 'Exit';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [20 79 661 419];

            % Create CrtanjegrafikaTab
            app.CrtanjegrafikaTab = uitab(app.TabGroup);
            app.CrtanjegrafikaTab.Title = 'Crtanje grafika';

            % Create UIAxes
            app.UIAxes = uiaxes(app.CrtanjegrafikaTab);
            title(app.UIAxes, {''; ''})
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.Position = [35 129 431 236];

            % Create CrtajButton
            app.CrtajButton = uibutton(app.CrtanjegrafikaTab, 'push');
            app.CrtajButton.ButtonPushedFcn = createCallbackFcn(app, @CrtajButtonPushed, true);
            app.CrtajButton.Position = [502 47 116 43];
            app.CrtajButton.Text = 'Crtaj';

            % Create EditField
            app.EditField = uieditfield(app.CrtanjegrafikaTab, 'numeric');
            app.EditField.Position = [538 210 44 22];
            app.EditField.Value = 1;

            % Create aLabel
            app.aLabel = uilabel(app.CrtanjegrafikaTab);
            app.aLabel.Position = [523 210 16 22];
            app.aLabel.Text = 'a=';

            % Create DiskretanButton
            app.DiskretanButton = uibutton(app.CrtanjegrafikaTab, 'state');
            app.DiskretanButton.Text = 'Diskretan';
            app.DiskretanButton.Position = [87 89 100 22];

            % Create KorakSpinnerLabel
            app.KorakSpinnerLabel = uilabel(app.CrtanjegrafikaTab);
            app.KorakSpinnerLabel.HorizontalAlignment = 'right';
            app.KorakSpinnerLabel.Position = [35 57 37 22];
            app.KorakSpinnerLabel.Text = 'Korak';

            % Create KorakSpinner
            app.KorakSpinner = uispinner(app.CrtanjegrafikaTab);
            app.KorakSpinner.Step = 0.314159265358979;
            app.KorakSpinner.Limits = [0.314159265358979 3.14159265358979];
            app.KorakSpinner.Position = [87 57 100 22];
            app.KorakSpinner.Value = 3.14159265358979;

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.CrtanjegrafikaTab);
            app.ButtonGroup.Position = [485 244 160 104];

            % Create AsinaxButton
            app.AsinaxButton = uiradiobutton(app.ButtonGroup);
            app.AsinaxButton.Text = 'A*sin(ax)';
            app.AsinaxButton.Position = [1 76 71 22];
            app.AsinaxButton.Value = true;

            % Create AcosaxButton
            app.AcosaxButton = uiradiobutton(app.ButtonGroup);
            app.AcosaxButton.Text = 'A*cos(ax)';
            app.AcosaxButton.Position = [1 46 74 22];

            % Create AtanaxButton
            app.AtanaxButton = uiradiobutton(app.ButtonGroup);
            app.AtanaxButton.Text = 'A*tan(ax)';
            app.AtanaxButton.Position = [1 17 72 22];

            % Create Asinax2Button
            app.Asinax2Button = uiradiobutton(app.ButtonGroup);
            app.Asinax2Button.Text = 'A*sin(ax^2)';
            app.Asinax2Button.Position = [77 76 83 22];

            % Create Acosax2Button
            app.Acosax2Button = uiradiobutton(app.ButtonGroup);
            app.Acosax2Button.Text = 'A*cos(ax^2)';
            app.Acosax2Button.Position = [77 46 86 22];

            % Create Atanax2Button
            app.Atanax2Button = uiradiobutton(app.ButtonGroup);
            app.Atanax2Button.Text = 'A*tan(ax^2)';
            app.Atanax2Button.Position = [77 17 84 22];

            % Create AmplitudaSliderLabel
            app.AmplitudaSliderLabel = uilabel(app.CrtanjegrafikaTab);
            app.AmplitudaSliderLabel.HorizontalAlignment = 'right';
            app.AmplitudaSliderLabel.Position = [485 138 59 22];
            app.AmplitudaSliderLabel.Text = 'Amplituda';

            % Create AmplitudaSlider
            app.AmplitudaSlider = uislider(app.CrtanjegrafikaTab);
            app.AmplitudaSlider.Limits = [0 1];
            app.AmplitudaSlider.ValueChangedFcn = createCallbackFcn(app, @AmplitudaSliderValueChanged, true);
            app.AmplitudaSlider.ValueChangingFcn = createCallbackFcn(app, @AmplitudaSliderValueChanging, true);
            app.AmplitudaSlider.Position = [549 159 96 3];
            app.AmplitudaSlider.Value = 1;

            % Create KalkulatorTab
            app.KalkulatorTab = uitab(app.TabGroup);
            app.KalkulatorTab.Title = 'Kalkulator';
            app.KalkulatorTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create but7
            app.but7 = uibutton(app.KalkulatorTab, 'push');
            app.but7.ButtonPushedFcn = createCallbackFcn(app, @but7ButtonPushed, true);
            app.but7.FontSize = 30;
            app.but7.Position = [64 200 76 58];
            app.but7.Text = '7';

            % Create but8
            app.but8 = uibutton(app.KalkulatorTab, 'push');
            app.but8.ButtonPushedFcn = createCallbackFcn(app, @but8ButtonPushed, true);
            app.but8.FontSize = 30;
            app.but8.Position = [139 200 76 58];
            app.but8.Text = '8';

            % Create but9
            app.but9 = uibutton(app.KalkulatorTab, 'push');
            app.but9.ButtonPushedFcn = createCallbackFcn(app, @but9ButtonPushed, true);
            app.but9.FontSize = 30;
            app.but9.Position = [214 200 76 58];
            app.but9.Text = '9';

            % Create but4
            app.but4 = uibutton(app.KalkulatorTab, 'push');
            app.but4.ButtonPushedFcn = createCallbackFcn(app, @but4ButtonPushed, true);
            app.but4.FontSize = 30;
            app.but4.Position = [64 143 76 58];
            app.but4.Text = '4';

            % Create but5
            app.but5 = uibutton(app.KalkulatorTab, 'push');
            app.but5.ButtonPushedFcn = createCallbackFcn(app, @but5ButtonPushed, true);
            app.but5.FontSize = 30;
            app.but5.Position = [139 143 76 58];
            app.but5.Text = '5';

            % Create but6
            app.but6 = uibutton(app.KalkulatorTab, 'push');
            app.but6.ButtonPushedFcn = createCallbackFcn(app, @but6ButtonPushed, true);
            app.but6.FontSize = 30;
            app.but6.Position = [214 143 76 58];
            app.but6.Text = '6';

            % Create but1
            app.but1 = uibutton(app.KalkulatorTab, 'push');
            app.but1.ButtonPushedFcn = createCallbackFcn(app, @but1ButtonPushed, true);
            app.but1.FontSize = 30;
            app.but1.Position = [64 86 76 58];
            app.but1.Text = '1';

            % Create but2
            app.but2 = uibutton(app.KalkulatorTab, 'push');
            app.but2.ButtonPushedFcn = createCallbackFcn(app, @but2ButtonPushed, true);
            app.but2.FontSize = 30;
            app.but2.Position = [139 86 76 58];
            app.but2.Text = '2';

            % Create but3
            app.but3 = uibutton(app.KalkulatorTab, 'push');
            app.but3.ButtonPushedFcn = createCallbackFcn(app, @but3ButtonPushed, true);
            app.but3.FontSize = 30;
            app.but3.Position = [214 86 76 58];
            app.but3.Text = '3';

            % Create butc
            app.butc = uibutton(app.KalkulatorTab, 'push');
            app.butc.ButtonPushedFcn = createCallbackFcn(app, @butcButtonPushed, true);
            app.butc.FontSize = 30;
            app.butc.Position = [64 29 76 58];
            app.butc.Text = {'C'; ''};

            % Create but0
            app.but0 = uibutton(app.KalkulatorTab, 'push');
            app.but0.ButtonPushedFcn = createCallbackFcn(app, @but0ButtonPushed, true);
            app.but0.FontSize = 30;
            app.but0.Position = [139 29 76 58];
            app.but0.Text = '0';

            % Create butdot
            app.butdot = uibutton(app.KalkulatorTab, 'push');
            app.butdot.ButtonPushedFcn = createCallbackFcn(app, @butdotButtonPushed, true);
            app.butdot.FontSize = 30;
            app.butdot.Position = [214 29 76 58];
            app.butdot.Text = {'.'; ''};

            % Create buteq
            app.buteq = uibutton(app.KalkulatorTab, 'push');
            app.buteq.ButtonPushedFcn = createCallbackFcn(app, @buteqButtonPushed, true);
            app.buteq.FontSize = 30;
            app.buteq.Position = [302 29 76 47];
            app.buteq.Text = '=';

            % Create butmul
            app.butmul = uibutton(app.KalkulatorTab, 'push');
            app.butmul.ButtonPushedFcn = createCallbackFcn(app, @butmulButtonPushed, true);
            app.butmul.FontSize = 30;
            app.butmul.Position = [302 167 76 47];
            app.butmul.Text = 'x';

            % Create buttake
            app.buttake = uibutton(app.KalkulatorTab, 'push');
            app.buttake.ButtonPushedFcn = createCallbackFcn(app, @buttakeButtonPushed, true);
            app.buttake.FontSize = 30;
            app.buttake.Position = [302 121 76 47];
            app.buttake.Text = '-';

            % Create butadd
            app.butadd = uibutton(app.KalkulatorTab, 'push');
            app.butadd.ButtonPushedFcn = createCallbackFcn(app, @butaddButtonPushed, true);
            app.butadd.FontSize = 30;
            app.butadd.Position = [302 75 76 47];
            app.butadd.Text = '+';

            % Create butdiv
            app.butdiv = uibutton(app.KalkulatorTab, 'push');
            app.butdiv.ButtonPushedFcn = createCallbackFcn(app, @butdivButtonPushed, true);
            app.butdiv.FontSize = 30;
            app.butdiv.Position = [302 213 76 47];
            app.butdiv.Text = '/';

            % Create Label
            app.Label = uilabel(app.KalkulatorTab);
            app.Label.BackgroundColor = [0.8 0.8 0.8];
            app.Label.HorizontalAlignment = 'right';
            app.Label.FontSize = 40;
            app.Label.Position = [64 278 314 49];
            app.Label.Text = '0';

            % Create GraphicalUserInterfaceMatlabLabel
            app.GraphicalUserInterfaceMatlabLabel = uilabel(app.UIFigure);
            app.GraphicalUserInterfaceMatlabLabel.HorizontalAlignment = 'center';
            app.GraphicalUserInterfaceMatlabLabel.VerticalAlignment = 'top';
            app.GraphicalUserInterfaceMatlabLabel.FontSize = 25;
            app.GraphicalUserInterfaceMatlabLabel.FontWeight = 'bold';
            app.GraphicalUserInterfaceMatlabLabel.Position = [68 553 553 36];
            app.GraphicalUserInterfaceMatlabLabel.Text = {'4.07 Graphical User Interface (Matlab)'; ''};

            % Create Label_2
            app.Label_2 = uilabel(app.UIFigure);
            app.Label_2.HorizontalAlignment = 'right';
            app.Label_2.FontSize = 14;
            app.Label_2.Position = [558 523 110 22];
            app.Label_2.Text = {'26.11.2019'; ''};

            % Create LiteraturawwwmathworkscomLabel
            app.LiteraturawwwmathworkscomLabel = uilabel(app.UIFigure);
            app.LiteraturawwwmathworkscomLabel.Position = [33 21 214 33];
            app.LiteraturawwwmathworkscomLabel.Text = {'Literatura: www.mathworks.com'; ''};

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = rad_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end