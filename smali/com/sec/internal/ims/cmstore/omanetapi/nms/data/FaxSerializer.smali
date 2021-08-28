.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/FaxSerializer;
.super Ljava/lang/Object;
.source "FaxSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/sec/internal/omanetapi/nms/data/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/sec/internal/omanetapi/nms/data/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 12
    .param p1, "object"    # Lcom/sec/internal/omanetapi/nms/data/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .line 22
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 24
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 25
    .local v1, "obj":Lcom/google/gson/JsonObject;
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolderPath:Ljava/lang/String;

    const-string/jumbo v3, "parentFolderPath"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 29
    .local v2, "attribute":Lcom/google/gson/JsonObject;
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 30
    .local v3, "attributeArr":Lcom/google/gson/JsonArray;
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 31
    .local v7, "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 32
    .local v8, "attrJson":Lcom/google/gson/JsonObject;
    iget-object v9, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    const-string v10, "name"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v10, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 34
    iget-object v10, v7, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v10, v10, v9

    const-string/jumbo v11, "value"

    invoke-virtual {v8, v11, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 37
    .end local v9    # "i":I
    :cond_0
    invoke-virtual {v3, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 30
    .end local v7    # "attr":Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .end local v8    # "attrJson":Lcom/google/gson/JsonObject;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 40
    :cond_1
    const-string v4, "attribute"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 41
    const-string v4, "attributes"

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 42
    const-string v4, "object"

    invoke-virtual {v0, v4, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 44
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 16
    check-cast p1, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/FaxSerializer;->serialize(Lcom/sec/internal/omanetapi/nms/data/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
