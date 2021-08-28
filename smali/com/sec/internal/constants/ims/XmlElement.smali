.class public Lcom/sec/internal/constants/ims/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/XmlElement$Attribute;
    }
.end annotation


# instance fields
.field public mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public mChildElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;

.field public mNamespace:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 106
    iput-object p2, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-object p3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 132
    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement$Attribute;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/constants/ims/XmlElement$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Ljava/lang/String;

    .line 139
    if-eqz p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement$Attribute;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/constants/ims/XmlElement$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    return-object p0
.end method

.method public addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1
    .param p1, "element"    # Lcom/sec/internal/constants/ims/XmlElement;

    .line 151
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object p0
.end method

.method public addChildElements(Ljava/util/List;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;)",
            "Lcom/sec/internal/constants/ims/XmlElement;"
        }
    .end annotation

    .line 156
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/XmlElement;>;"
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 179
    return v0

    .line 181
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 182
    return v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 185
    return v1

    .line 187
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/constants/ims/XmlElement;

    .line 188
    .local v2, "other":Lcom/sec/internal/constants/ims/XmlElement;
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 189
    iget-object v3, v2, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 190
    return v1

    .line 192
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 193
    return v1

    .line 196
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 197
    iget-object v3, v2, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 198
    return v1

    .line 200
    :cond_5
    iget-object v4, v2, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 201
    return v1

    .line 204
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 205
    iget-object v3, v2, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 206
    return v1

    .line 208
    :cond_7
    iget-object v4, v2, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 209
    return v1

    .line 212
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    if-nez v3, :cond_9

    .line 213
    iget-object v3, v2, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    if-eqz v3, :cond_a

    .line 214
    return v1

    .line 216
    :cond_9
    iget-object v4, v2, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 217
    return v1

    .line 220
    :cond_a
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    if-nez v3, :cond_b

    .line 221
    iget-object v3, v2, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 222
    return v1

    .line 224
    :cond_b
    iget-object v4, v2, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 225
    return v1

    .line 228
    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 166
    const/16 v0, 0x1f

    .line 167
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 168
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 169
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    .line 170
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    .line 171
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    .line 172
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v2, v4

    .line 173
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 0
    .param p1, "ns"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1
    .param p1, "element"    # Lcom/sec/internal/constants/ims/XmlElement;

    .line 161
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    .line 116
    return-object p0
.end method
