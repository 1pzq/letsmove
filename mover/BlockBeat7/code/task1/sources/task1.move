module crypto::hello_move {
    use std::string;

    public struct HelloMoveText has key, store{
        id: UID,
        text: string::String
    }

    public entry fun printOut(ctx: &mut TxContext) {
        let id = object::new(ctx);

        let object = HelloMoveText {
            id: id,
            text: string::utf8(b"Hello world,i am BlockBeat7")
        };

        transfer::public_transfer(object, tx_context::sender(ctx));
    }

}
