.class public abstract Ljavax/mail/search/AddressTerm;
.super Ljavax/mail/search/SearchTerm;
.source "AddressTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x1bd4a1b9715ebffcL


# instance fields
.field protected address:Ljavax/mail/Address;


# direct methods
.method protected constructor <init>(Ljavax/mail/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax/mail/Address;

    .line 62
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 63
    iput-object p1, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p1, Ljavax/mail/search/AddressTerm;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/AddressTerm;

    .line 87
    .local v0, "at":Ljavax/mail/search/AddressTerm;
    iget-object v1, v0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    iget-object v2, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    invoke-virtual {v1, v2}, Ljavax/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAddress()Ljavax/mail/Address;
    .locals 1

    .line 70
    iget-object v0, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    iget-object v0, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected match(Ljavax/mail/Address;)Z
    .locals 1
    .param p1, "a"    # Ljavax/mail/Address;

    .line 77
    iget-object v0, p0, Ljavax/mail/search/AddressTerm;->address:Ljavax/mail/Address;

    invoke-virtual {p1, v0}, Ljavax/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
