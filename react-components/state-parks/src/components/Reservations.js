import React from 'react';

export default class Reservations extends React.Component{

    render(){
        const data = [
            {
                site: "site1",
                name: "Bob",
                date: "5/27/2020"
            },
    
            {
                site: "site2",
                name: "Bill",
                date: "2/17/2020"
            },
    
            {
                site: "site3",
                name: "John",
                date: "1/27/2020"
            }
        ]
        return(
            <div>
                <ol>
            {data.map(s => {
            return(
                    <li>{s.site}<br/>{s.name}<br/>{s.date}</li>
            )
            })} 
                </ol>
            </div>
            
        )
        
    }


}