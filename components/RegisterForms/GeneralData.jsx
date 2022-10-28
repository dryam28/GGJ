import Link from "next/link";

const GeneralData = ({ handleNext }) => {
	return (
		<>
			<div className="mb-3">
				<label htmlFor="exampleFormControlInput1" className="form-label">
					¿Cuál es el nombre de tu equipo?
				</label>
				<input type="text" className="form-control" />
			</div>
			<div className="mb-3">
				<label htmlFor="exampleFormControlTextarea1" className="form-label">
					Déjanos conocerlos
				</label>
				<textarea className="form-control" rows={12} defaultValue={""} />
			</div>
			<div>
				<div>¿Cuántos participantes son?</div>
				<input
					className="form-check-input"
					style={{ cursor: "pointer" }}
					name="inlineRadioOptions"
					type="radio"
				/>
				<label className="form-check-label ms-2" htmlFor="inlineRadio1">
					4
				</label>
				<input
					className="form-check-input ms-5"
					style={{ cursor: "pointer" }}
					name="inlineRadioOptions"
					type="radio"
				/>
				<label className="form-check-label ms-2" htmlFor="inlineRadio2">
					5
				</label>
			</div>
			<div className="progress-bar mt-5">
				<div className="progress" style={{ width: "30%" }}></div>
			</div>
			<div className="text-center d-lg-none mt-3">
				DATOS GENERALES DEL EQUIPO
			</div>
			<div
				style={{
					display: "flex",
					justifyContent: "space-between",
				}}
				className="my-3"
			>
				<Link href={"/"}>
					<button className="btn  btn-secondary px-5 GG_secondary_button">
						Atrás
					</button>
				</Link>

				<div className="text-center d-none d-lg-block">
					DATOS GENERALES DEL EQUIPO
				</div>
				<button
					className="btn  btn-primary GG_button px-5"
					onClick={() => handleNext(1)}
				>
					Siguiente
				</button>
			</div>
		</>
	);
};

export default GeneralData;
