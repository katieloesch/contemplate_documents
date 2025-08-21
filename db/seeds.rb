10.times do |d|
  ContemplateDocument.create!(
    title: "Document #{d}",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis semper tristique. Integer ut metus lacinia, cursus justo id, sodales velit. Sed tincidunt, felis sed.",
    file_url: 'https://drive.google.com/file/d/1WJyjAfRmdgFbZq-ii5HKGQepjDMFpixf/view?usp=sharing',
    image_url: "https://cdn.pixabay.com/photo/2014/08/26/19/21/document-428335_1280.jpg",
  )
end 