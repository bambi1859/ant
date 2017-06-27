class Img < ActiveRecord::Base
    belongs_to :post
    mount_uploaders :img_url, YeinUploader #이미지 어려개라서 s주의
    serialize :img_url, JSON #이미지 여러개라 이 행 추가
end
