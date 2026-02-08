from pathlib import Path


def run_pipeline(input_path: Path, output_path: Path, do_train:bool, do_predict:bool) -> None:
    
    # Create output directory if it doesn't exist
    output_path.mkdir(parents=True, exist_ok=True)
    
    # parse
    # feature engineering
    # train
    # predict
    raise NotImplementedError("Pipeline steps are not implemented yet.")

