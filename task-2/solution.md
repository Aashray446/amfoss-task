Step-1 : - mkdir Coordinates-Location and cd Coordinates-Location
Step-2 : - mkdir North and cd North
        touch NDegree.txt
            cat>NDegree.txt
            9°
        touch NMinutes.txt
            cat>Nminutes.txt
            5'
        touch NSeconds.txt
            cat>NSeconds.txt
            38.1"
        cat NDegree.txt Nminutes.txt NSeconds.txt > NorthCoordinate.txt
        cp NorthCoordinate.txt ../ , cd ../ , mv NorthCoordinate.txt North.txt and rm North/NorthCoordinate.txt
Step-3 : - mkdir East and cd East 
Step-5 : - touch EDegree.txt
            cat > EDegree.txt
            76°
        touch Eminutes.txt
            cat > Eminutes.txt
            29'
        touch ESeconds.txt
            cat > Eseconds.txt
            30"
        cat EDegree.txt Eminutes.txt Eseconds.txt > EastCoordinate.txt
        cp EastCoordinate.txt ../ . cd ../ , mv EastCoordinate.txt East.txt, rm East/EastCoordinate.txt
Step-9 git add task-2, git commit -m "Task-2 done" , git push 