rendering
renderEditControlOn: html component: fc
	html checkbox value: fc getCache; callback: [:val | fc setCache: val]