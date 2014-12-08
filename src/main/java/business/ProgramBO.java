/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import beans.Program;
import database.ProgramDAO;
import java.util.ArrayList;
/**
 *
 * @author Robert
 */
public class ProgramBO {
    
    public static ArrayList<Program> getPrograms(){
    return ProgramDAO.getPrograms();
}

public static void insertProgram(Program program) throws Exception{
    ProgramDAO.insertProgram(program);
}

public static void deleteProgram(int programAccountId) throws Exception{
    ProgramDAO.deleteProgram(programAccountId);
}
    
}
