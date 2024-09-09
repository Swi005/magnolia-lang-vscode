package Hello.Hello;

concept IO = {
	type World;
	type String;
	
	procedure print(obs s : String, upd w : World);
	procedure newline(upd w : World);
};


implementation Hello = external Java Hello.JavaHello {
	use signature(IO);
	
	function hello() : String;
	function world() : String;
	function hi() : String;
	function yall() : String;
	function space() : String;
	function comma() : String;
};

program HelloWorld = {
	use Hello;
	
	function main() : World = {
		var w : World;
		var s : String;
		
	//call print(s, w);
		
		call print(hi(), w);
		call print(comma(), w);
		call print(space(), w);
		call print(yall(), w);
		call newline(w);
		return w;
	};
};