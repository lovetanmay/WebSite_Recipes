<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRecipes.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .thumb {
            height: 75px;
            border: 1px solid #000;
            margin: 10px 5px 0 0;
        }
    </style>   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3-row">
  <div class="w3-col s4  w3-center">
      <div class="w3-container" >  
      <p>
            <label>Add Photo</label>
            </p>
      <input class="w3-input" type="file" id="files" name="files[]" accept="image/*" multiple >
      <output id="list" class="w3-padding-12"></output>
          </div>
      <div class="w3-row-padding">
  <div class="w3-half">
    <label>Preparation Time(min.)</label>
  <input class="w3-input w3-border-black" type="number" min="0">
  </div>
  <div class="w3-half">
    <label>Cooking Time(in min.)</label>
   <input class="w3-input w3-border-black" type="number" min="0">    
  </div>
</div>
      <div class="w3-row-padding">
  <div class="w3-half">
    <label>Ready in</label>
  <input class="w3-input w3-border-black" type="text" placeholder="Optional" >
  </div>
  <div class="w3-half">
    <label>Number Of Servings</label>
   <input class="w3-input w3-border-black" type="number" min="0">    
  </div>
</div>
      
      </div>
        
  <div class="w3-col s8 w3-left-align">
<label>Title of The Recipe</label>
        <input class="w3-input w3-border-black" type="text" > 
<label>Description</label>
      <textarea class="w3-input w3-border-black" cols="5" rows="5" placeholder="Write little Description about Recipe"></textarea>
      <select class="w3-select w3-border-black" name="option">
  <option value="" disabled selected>Categories</option>
  <option value="1">Category 1</option>
  <option value="2">Category 2</option>
  <option value="3">Category 3</option>
</select>
      <label>Ingredients</label>
      <textarea class="w3-input w3-border-black" cols="5" rows="5" placeholder="Write Ingredients and Quantity"></textarea>
          <label>Step to Follow</label>
      <textarea class="w3-input w3-border-black" cols="5" rows="5" placeholder="Write Steps for the Recipies"></textarea>

      <input class="w3-check w3-order-black" type="checkbox" required>
      <label class="w3-validate">By Accepting Terms and Conditions You are allowing our team to review your Recipes. You are aslo allowing out team to published it publicly. So, others can use it.</label>

      <div class="w3-row-padding">
  <div class="w3-half">
    <button class="w3-btn-block w3-section w3-blue w3-ripple w3-padding" type="submit">Submit</button>
  </div>
  <div class="w3-half">
    <button class="w3-btn-block w3-section w3-blue w3-ripple w3-padding" type="reset" value="Reset">Clear</button> 
  </div>
</div>
      </div>
</div>

    <script>
        function handleFileSelect(evt) {
            var files = evt.target.files; // FileList object

            // Loop through the FileList and render image files as thumbnails.
            for (var i = 0, f; f = files[i]; i++) {

                // Only process image files.
                if (!f.type.match('image.*')) {
                    continue;
                }

                var reader = new FileReader();

                // Closure to capture the file information.
                reader.onload = (function (theFile) {
                    return function (e) {
                        // Render thumbnail.
                        var span = document.createElement('span');
                        span.innerHTML = ['<img class="thumb" src="', e.target.result,
                                          '" title="', escape(theFile.name), '"/>'].join('');
                        document.getElementById('list').insertBefore(span, null);
                    };
                })(f);

                // Read in the image file as a data URL.
                reader.readAsDataURL(f);
            }
        }

        document.getElementById('files').addEventListener('change', handleFileSelect, false);

        </script>
</asp:Content>

