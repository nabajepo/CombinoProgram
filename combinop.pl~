%This program is for combination

%This program is for pin
%Here where program starts
startCombinoP:-writeln("Hey this program combine numbers for n elements selected,this program can't assume elements bigger than 3"),
               write("Please enter the length of numbers wanted : "),
               read(N),
               write("For "),
               write(N),
               writeln(" elements we got : "),
               writeln("#####################################--RESULTS--#################################"),
               combinoP(N,ResL),
               display(ResL),
               writeln(""),
               writeln("#########################################--END--#################################"),
               length(ResL,Length),
               write("We got "),
               write(Length),
               writeln(" results ").
%%%%%%%%%%%%%%%%%%%%% This are all numbers we have to%%%%%%%%%%%%%%%%%
numbers([0,1,2,3,4,5,6,7,8,9]).
%Here where we do combinaison
combinoP(Size,ResL):-numbers(N),Size\=1->combinoManage(N,N,Size,2,ResL),!;numbers(ResL),!.
%Here we display result
display(R):-maplist(write,R).
%Here we make combinaison for N pin(Tour)
combinoManage(Data,Number,Tour,Loc,Res):-Loc\=Tour->NewLoc is Loc+1
                                        ,combinoComplet(Number,Data,[],ResT)
                                        ,combinoManage(ResT,Number,Tour,NewLoc,Res);
                                        combinoComplet(Number,Data,[],Res),!.
%Here we make full combinaison
combinoComplet([Tail|Queue],LoLs,SListEn,Result):-Queue\=[]->combino(LoLs,Tail,SListEn,TRN)
                                                           ,combinoComplet(Queue,LoLs,TRN,Result);
                                                           combino(LoLs,Tail,SListEn,Result),!.

% Here we do combinaison for a specifique element
combino([Tail|Queue],Elt,LoCres,FRes):-Queue\=[]->pushFront(Elt,Tail,Lres)
                                                 ,pushBack(Lres,LoCres,NLres)
                                                 ,combino(Queue,Elt,NLres,FRes);
                                                  pushFront(Elt,Tail,Leres)
                                                  ,pushBack(Leres,LoCres,FRes),!.


%Here we add element in back
pushBack(Element,[],[Element]).
pushBack(Element,[Tail|Queue],[Tail|NewList]):-pushBack(Element,Queue,NewList).
%Here we add in-front
pushFront(Element,List,[Element|List]).
% here we chek if two list are equal(return 1 if they are equal and 0
% when they are not
equal([T|Q],[H|F],Res):-Q\=[]->(T\=H->Res=0;equal(Q,F,Res));Res=1.
%here we look for specific pin
getSpecificPin(List,Pin,Res):-writeln("Here we show element on specific address"),Res=Pin.


