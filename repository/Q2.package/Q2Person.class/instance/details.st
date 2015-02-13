rendering
details
  ^ String
    streamContents: [ :stream | 
      stream
        nextPutAll: 'Email: ' , email;
        cr;
        nextPutAll: 'Email 2: ' , email2;
        cr;
        nextPutAll: 'Phone: ' , phone;
        cr;
        nextPutAll: 'Mobile phone: ' , cellPhone;
        cr;
        nextPutAll: 'Short phone: ' , shortPhone;
        cr;
        nextPutAll: 'Comment: ' , comment ]