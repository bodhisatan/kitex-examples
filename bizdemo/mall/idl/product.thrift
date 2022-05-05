// Copyright 2022 CloudWeGo Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

include "base.thrift"
namespace go cmp.ecom.product

struct Brand {
    1: i64 BrandId,
    2: i64 ShopId,
    3: string BrandName,
    4: string Logo,
    5: string BrandStory
}

struct AddBrandReq {
    1: i64 ShopId,
    2: string BrandName,
    3: string Logo,
    4: string BrandStroy
}

struct AddBrandResp {
    1: i64 BrandId,
    255: base.BaseResp BaseResp
}

struct UpdateBrandReq {
    1: i64 BrandId,
    2: i64 ShopId,
    3: optional string BrandName,
    4: optional string Logo,
    5: optional string BrandStory
}

struct UpdateBrandResp {
    255: base.BaseResp BaseResp
}

struct DeleteBrandReq {
    1: i64 BrandId,
    2: i64 ShopId,
}

struct DeleteBrandResp {
    255: base.BaseResp BaseResp
}

struct GetBrandsByShopIdReq {
    1: i64 ShopId,
}

struct GetBrandsByShopIdResp {
    1: list<Brand> Brands,

    255: base.BaseResp BaseResp
}

service ProductService {
    AddBrandResp AddBrand(1: AddBrandReq req)
    UpdateBrandResp UpdateBrand(1: UpdateBrandReq req)
    DeleteBrandResp DeleteBrand(1: DeleteBrandReq req)
    GetBrandsByShopIdResp GetBrandsByShopId(1: GetBrandsByShopIdReq req)
}



