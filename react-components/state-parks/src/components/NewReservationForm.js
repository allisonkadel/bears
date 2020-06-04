import React from 'react';

export default class NewReservationForm extends React.Component{
    state = {
        site: "",
        name: "",
        date: ""
    }

    handleOnChange = (e) => {
        this.setState({
            [e.target.name]: e.target.value
        })
    }

    


    render(){
        return(

            <div>
                <form onChange ={this.handleOnChange}>
                    <label>Site</label>
                    <br />
                    <input type="text" name="site" placeholder="site" />
                    <br />
                    <label>Name</label>
                    <br />
                    <input type="text" name="name" placeholder="name" />
                    <br />
                    <label>Date</label>
                    <br />
                    <input type="text" name="date" placeholder="date" />
                    <br />
                    <input type="submit" name="submit" value="submit" />
                </form>
            </div>
        )
    }
}