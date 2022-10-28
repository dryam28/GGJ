import { useState } from "react";
import Layout from "../components/Layout";
import EULA from "../components/RegisterForms/EULA";
import MembersData from "../components/RegisterForms/MembersData";
import GeneralData from "../components/RegisterForms/GeneralData";
import End from "../components/End";

const Register = () => {
	const handleNext = (index) => {
		setCurrentForm(forms[index].form);
	};

	const handleSubmit = () => {
		alert("submit");
		setCurrentForm(forms[3].form);
	};

	const forms = [
		{ form: <GeneralData handleNext={handleNext} /> },
		{ form: <MembersData handleNext={handleNext} /> },
		{ form: <EULA handleNext={handleNext} handleSubmit={handleSubmit} /> },
		{ form: <End /> },
	];

	const [currentForm, setCurrentForm] = useState(forms[0].form);

	return (
		<Layout>
			<div
				className="px-sm-5 d-flex"
				style={{
					background: "linear-gradient(90deg, #F5F5F5 80%, white)",
					height: "100vh",
					overflowY: "scroll",
				}}
			>
				<div className={`container mt-5 mt-md-auto `}>{currentForm}</div>
			</div>
		</Layout>
	);
};

export default Register;
