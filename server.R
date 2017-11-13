
function(input,output){
  
  
  output$bar_plot<-renderPlot({
    
    drug_use<-as.character(input$drug)
    keep<-c("Age",drug_use)
    drug_data_subset<-drug_data[keep]
    colnames(drug_data_subset)<-c("Age","drug_use")
    
    ggplot(data=drug_data_subset,aes(x=Age,y=drug_use))+geom_histogram(stat = "identity",fill="steelblue")+ggtitle("Drug Use/Fequency Among Age Groups")+xlab("Age")+ylab("Drug Use/Frequency") +geom_text(aes(label=drug_use), vjust=-0.3, size=4)+theme_minimal()
      
  })
  
  
  
  
}