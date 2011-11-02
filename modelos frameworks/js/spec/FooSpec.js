

// "describe" é uma suite de teste, isto é, um conjunto de testes que cumprem o mesmo objetivo.
// Certa funcionalidade deve ter quantas suítes de teste forem necessárias para que ela seja 
// considerada testada
describe("TDD Teste", function() {
    // "it" é uma spec, isto é, um único teste. Uma suíte de teste deve ter quantos specs forem
    // necessários para que a suíte de testes esteja tes
    it("Validar soma", function() {
     	expect(Teste().sum(1,2)).toEqual(3);
    })

    /*
     * Executado antes de cada spec
     */
	beforeEach(function() {	});


    /*
     * Executado depois de cada spec
     */
	afterEach(function() {	});
});



/*
NOTAS DE COMO CRIAR TESTES:


Um teste é uma asserção. O framework de teste vai reportar sempre que uma asserção definida pelo teste 
não for satisfeita.
Estas são todas as asserções que Jasmine oferece (retiradas de https://github.com/pivotal/jasmine/wiki/Matchers, em 29/07/2011)


        expect(x).toEqual(y); compares objects or primitives x and y and passes if they are equivalent

        expect(x).toBe(y); compares objects or primitives x and y and passes if they are the same object

        expect(x).toMatch(pattern); compares x to string or regular expression pattern and passes if they match

        expect(x).toBeDefined(); passes if x is not undefined

        expect(x).toBeUndefined(); passes if x is undefined

        expect(x).toBeNull(); passes if x is null

        expect(x).toBeTruthy(); passes if x evaluates to true

        expect(x).toBeFalsy(); passes if x evaluates to false

        expect(x).toContain(y); passes if array or string x contains y

        expect(x).toBeLessThan(y); passes if x is less than y

        expect(x).toBeGreaterThan(y); passes if x is greater than y

        expect(function).toThrow(e); passes if function fn throws exception e when executed


Every matcher's criteria can be inverted by prepending .not:

        expect(x).not.toEqual(y); compares objects or primitives x and y and passes if they are not equivalent

*/

