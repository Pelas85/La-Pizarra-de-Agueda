class AdminController < ApplicationController

    def index

    end
    
    def temas
        @temas = Tema.all
    end

    def actividades
        @actividades = Actividad.all
    end

    def render_temas
        @tema = Tema.find(params[:tema])
        @asignaturas = Asignatura.all
        respond_to do |format|
            format.html { render :partial => "admin/partials/editTema", locals: {tema: @tema, asignaturas: @asignaturas } }
        end
    end

    def controles
        @controles = Control.all
    end

    def render_control
        @control = Control.find(params[:control])
        @asignaturas = Asignatura.all
        respond_to do |format|
            format.html { render :partial => "admin/partials/editControl", locals: {tema: @tema, asignaturas: @asignaturas } }
        end
    end

    def render_actividades
        @actividad = Actividad.find(params[:actividad])
        @asignaturas = Asignatura.all
        respond_to do |format|
            format.html { render :partial => "admin/partials/editActividad", locals: {actividad: @actividad, asignaturas: @asignaturas } }
        end
    end

    def deleteActividad
        @actividad = Actividad.find(params[:id])
        @actividad.destroy
    end

    def deleteTema
        @tema = Tema.find(params[:id])
        @tema.destroy
    end

    def deleteControl
        @control = Control.find(params[:id])
        @control.destroy
    end


    

end