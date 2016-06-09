declare variable $modelNumber as xs:string external;
declare variable $costInWords as xs:string external;
<Output>
   {
if (data(PART/COUNTRY/text()) = 'US')
then(
   <USOrder>
      <Item>{data(PART/ITEM/text())}</Item>
      <Manufacturer>{data(PART/MANUFACTURER/text())}</Manufacturer>
      <Cost>{data(PART/COST/text())}</Cost>
      <CostInWords>{$costInWords}</CostInWords>
      <ShippingCode>{fn:concat(data(PART/COUNTRY/text()),data(PART/PINCODE/text()))}</ShippingCode>
      <ModelNumber>{$modelNumber}</ModelNumber>
      {
if(data(PART/PINCODE/text())='33030')
then(
      <Region>Miami</Region>
      )
else(
      <Region>Unknown US Region</Region>
      )
}
   </USOrder>
   )

else if(data(PART/COUNTRY/text()) = 'INDIA')
then(
   <IndiaOrder>
      <Item>{data(PART/ITEM/text())}</Item>
      <Manufacturer>{data(PART/MANUFACTURER/text())}</Manufacturer>
      <Cost>{data(PART/COST/text())}</Cost>
      <CostInWords>{$costInWords}</CostInWords>
       <ShippingCode>{fn:concat(data(PART/COUNTRY/text()),data(PART/PINCODE/text()))}</ShippingCode>
       <ModelNumber>{$modelNumber}</ModelNumber>
      {
if(data(PART/PINCODE/text())='110092')
then(
      <Region>Delhi</Region>
      )
else(
      <Region>Unknown INDIA Region</Region>
      )
}
   </IndiaOrder>
   )

else(
   <OtherCountryOrder>
      <Item>{data(PART/ITEM/text())}</Item>
      <Manufacturer>{data(PART/MANUFACTURER/text())}</Manufacturer>
      <Cost>{data(PART/COST/text())}</Cost>
      <CostInWords>{$costInWords}</CostInWords>
      <ModelNumber>{$modelNumber}</ModelNumber>
       <ShippingCode>{fn:concat(data(PART/COUNTRY/text()),data(PART/PINCODE/text()))}</ShippingCode>
      <Region>Unknown</Region>
   </OtherCountryOrder>
   )
}
</Output>