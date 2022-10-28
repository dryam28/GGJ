const MembersData = ({ handleNext }) => {
	return (
		<>
			<div className="mb-4">
				<label htmlFor="exampleFormControlInput1" className="form-label">
					Nombre
				</label>
				<input type="text" className="form-control" />
			</div>

			<div className="row mb-4">
				<div className="col-6 mb-4">
					<label className="form-label">Carne de Identidad</label>
					<input type="number" className="form-control" />
				</div>
				<div className="col-6 mb-4">
					<label className="form-label">Género</label>
					<select class="form-select" aria-label="Default select example">
						<option value="1">Masculino</option>
						<option value="2">Femenino</option>
						<option value="3">Otro</option>
					</select>
				</div>
				<div className="col-6">
					<label className="form-label">Número de teléfono</label>
					<input type="number" className="form-control" />
				</div>
				<div className="col-6">
					<label className="form-label">Correo</label>
					<input type="email" className="form-control" />
				</div>
			</div>
			<div className="mb-4">
				<label className="form-label">Institución</label>
				<select class="form-select" aria-label="Default select example">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</div>
			<div className="mb-4">
				<label htmlFor="exampleFormControlInput1" className="form-label">
					área
				</label>
				<input type="text" className="form-control" />
			</div>

			<div className="progress-bar mt-5">
				<div className="progress" style={{ width: "60%" }}></div>
			</div>
			<div className="text-center d-lg-none mt-3">
				datos del primer integrante
			</div>
			<div
				style={{
					display: "flex",
					justifyContent: "space-between",
				}}
				className="my-3"
			>
				<button
					className="btn  btn-secondary px-5 GG_secondary_button"
					onClick={() => handleNext(0)}
				>
					Atrás
				</button>

				<div className="text-center d-none d-lg-block">
					datos del primer integrante
				</div>
				<button
					className="btn  btn-primary GG_button px-5"
					onClick={() => handleNext(2)}
				>
					Siguiente
				</button>
			</div>
		</>
	);
};

export default MembersData;
