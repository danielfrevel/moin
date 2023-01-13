from dataclasses import dataclass


@dataclass
class Flugzeug: 
    Id: int
    Name: str
    Flugstunden: int

@dataclass
class Mechaniker:
    Id: int
    Name: str

@dataclass
class Wartungstyp:
    Id: int
    Label: str

@dataclass
class Komponente: 
    Id: int
    Label: str
    Leistung: int
    Kosten: int


# import pypyodbc as pdb 
# import pandas as pd
  
  
# connection = pdb.connect("""
#     Driver={{SQL Server Native Client 11.0}};
#     Server={0};
#     Database={1};
#     Trusted_Connection=yes;""".format('LAPTOP-LKHL8PKV',
#                                       'GeeksForGeeks')
# )
  
# query = """SELECT * FROM student_marks
#            WHERE stu_branch='E.C.E'"""
# table = pd.read_sql(query, connection)
# print(table)
