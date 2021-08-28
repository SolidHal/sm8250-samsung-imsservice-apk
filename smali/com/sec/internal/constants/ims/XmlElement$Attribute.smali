.class public Lcom/sec/internal/constants/ims/XmlElement$Attribute;
.super Ljava/lang/Object;
.source "XmlElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/XmlElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mNamespace:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 53
    return v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 56
    return v1

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 59
    return v1

    .line 61
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/constants/ims/XmlElement$Attribute;

    .line 62
    .local v2, "other":Lcom/sec/internal/constants/ims/XmlElement$Attribute;
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 63
    iget-object v3, v2, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 64
    return v1

    .line 66
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 67
    return v1

    .line 70
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 71
    iget-object v3, v2, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 72
    return v1

    .line 74
    :cond_5
    iget-object v4, v2, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 75
    return v1

    .line 78
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 79
    iget-object v3, v2, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 80
    return v1

    .line 82
    :cond_7
    iget-object v4, v2, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 83
    return v1

    .line 86
    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 42
    const/16 v0, 0x1f

    .line 43
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 44
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 45
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    .line 46
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    .line 47
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
