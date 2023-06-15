export const handler = async (event) => {
	let response = {
		statusCode: 200,
		body: JSON.stringify({test: "test"})
	};
	return response;
};