.class public final Ljavax/mail/search/RecipientStringTerm;
.super Ljavax/mail/search/AddressStringTerm;
.source "RecipientStringTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x7318a6c781f26a21L


# instance fields
.field private type:Ljavax/mail/Message$RecipientType;


# direct methods
.method public constructor <init>(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p2}, Ljavax/mail/search/AddressStringTerm;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p1, Ljavax/mail/search/RecipientStringTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    return v1

    .line 118
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/RecipientStringTerm;

    .line 119
    .local v0, "rst":Ljavax/mail/search/RecipientStringTerm;
    iget-object v2, v0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    iget-object v3, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Ljavax/mail/search/AddressStringTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getRecipientType()Ljavax/mail/Message$RecipientType;
    .locals 1

    .line 83
    iget-object v0, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 126
    iget-object v0, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/AddressStringTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 98
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v1, "recipients":[Ljavax/mail/Address;
    if-nez v1, :cond_0

    .line 104
    return v0

    .line 106
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 109
    .end local v2    # "i":I
    return v0

    .line 107
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, v1, v2

    invoke-super {p0, v3}, Ljavax/mail/search/AddressStringTerm;->match(Ljavax/mail/Address;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "recipients":[Ljavax/mail/Address;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
