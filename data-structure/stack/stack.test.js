const { push, pop, isEmpty, peek, size } = require("./stack.js");

describe("stack",()=>{
	test("push onee element into the stack",()=>{
		push(1)
		expect(size()).toBe(1)
	})

	test("push another element, total numbers of element must be 2 elements",()=>{
		push(2)
		expect(size()).toBe(2)
	})

	// test("sfsafadfa",()=>{
	// 	push(1)
	// 	push(2)
	// 	expect()
	// })

	// test("sfsafadfa",()=>{
	// 	expect()
	// })

	// test("sfsafadfa",()=>{
	// 	expect()
	// })

	// test("sfsafadfa",()=>{
	// 	expect()
	// })

	// test("sfsafadfa",()=>{
	// 	expect()
	// })

	// test("sfsafadfa",()=>{
	// 	expect()
	// })
})