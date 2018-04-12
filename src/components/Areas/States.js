import React from 'react';

export default function States(props) {
    let states = props.options.map((x, i) => {
        return (
            <div key={i} onClick={(e) => props.action(x.state)}>
                <span>{x.state}</span>
                <span>{x.count}</span>
            </div>
        )
    })
    return (
        states
    )
}