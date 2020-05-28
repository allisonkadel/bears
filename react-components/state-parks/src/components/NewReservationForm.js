import React from 'react';

export default class NewReservationForm extends React.Component{

    render(){
        return(

            <div>
                <form>
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