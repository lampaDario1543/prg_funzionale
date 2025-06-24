signature TOTALORDER = sig
    type element;
    val lt : element * element -> bool
end;

functor MakeBST (Lt: TOTALORDER):
    sig
        type 'label btree
        exception EmptyTree;
        val create : Lt.element btree;
    end
=
    struct
        open Lt;
        datatype 'label btree =
            Empty |
            Node of 'label * 'label btree * 'label btree;
        exception EmptyTree;
        val create = Empty
    end;


structure String: TOTALORDER =
    struct
        type element = string;
        fun lt (x,y) =
            let
                fun lower (nil) = nil
                    | lower (c::cs) = (Char.toLower c)::lower (cs);
            in
                implode (lower (explode (x))) < implode (lower( explode(y)))
    end;
end;


structure StringBST = MakeBST (String);

val aiaia= StringBST.create;