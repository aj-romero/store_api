import React, { Component } from 'react';
import ReactDOM from 'react-dom';
 
/* An example React component */
class Main extends Component {
	constructor(){
		super();
		this.state = { products: [],}	
	}
	
	componentDidMount() {
		    /* fetch API in action */
		    fetch('/api/products')
			.then(response => {
			    return response.json();
			})
			.then(products => {
			    //Fetched product is stored in the state
							    
				this.setState({products:products.data});
			});
		  }
	renderProducts(){
		return this.state.products.map(product =>{
			return(	<tbody>
						<tr key={product.id}>
							<td>{product.id}</td>
							<td>{product.name}</td>
							<td>{product.price}</td>
							<td>{product.quantity}</td>
							<td>{product.likes}</td>
						</tr>
					</tbody>
							
			);		
		});	
	}
    render() {

	
        return (
            <div className="col-md-12 mt-4 text-center">
				<table className="table table-striped">
					<thead>
						<tr>
							<th>Id Product</th>
							<th>name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Likes</th>
						</tr>					
					</thead>
					{ this.renderProducts() }
				</table>
			</div>
            
        );
    }
}
 
export default Main;
 
/* The if statement is required so as to Render the component on pages that have a div with an ID of "root";  
*/
 
if (document.getElementById('root')) {
    ReactDOM.render(<Main />, document.getElementById('root'));
}
