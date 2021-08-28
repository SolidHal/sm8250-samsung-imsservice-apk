.class public Lorg/xbill/DNS/SIG0;
.super Ljava/lang/Object;
.source "SIG0.java"


# static fields
.field private static final VALIDITY:S = 0x12cs


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Lorg/xbill/DNS/SIGRecord;)V
    .locals 9
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 39
    const-string/jumbo v0, "sig0validity"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "validity":I
    if-gez v0, :cond_0

    .line 41
    const/16 v0, 0x12c

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 44
    .local v1, "now":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 45
    .local v7, "timeSigned":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    add-long/2addr v3, v1

    invoke-direct {v8, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 47
    .local v8, "timeExpires":Ljava/util/Date;
    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v3 .. v8}, Lorg/xbill/DNS/DNSSEC;->signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;

    move-result-object v3

    .line 50
    .local v3, "sig":Lorg/xbill/DNS/SIGRecord;
    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 51
    return-void
.end method

.method public static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/KEYRecord;Lorg/xbill/DNS/SIGRecord;)V
    .locals 5
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "b"    # [B
    .param p2, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "sig":Lorg/xbill/DNS/SIGRecord;
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 68
    .local v1, "additional":[Lorg/xbill/DNS/Record;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 69
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    aget-object v3, v1, v2

    check-cast v3, Lorg/xbill/DNS/SIGRecord;

    invoke-virtual {v3}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    nop

    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_1
    aget-object v3, v1, v2

    move-object v0, v3

    check-cast v0, Lorg/xbill/DNS/SIGRecord;

    .line 76
    .end local v2    # "i":I
    :cond_2
    invoke-static {p0, p1, v0, p3, p2}, Lorg/xbill/DNS/DNSSEC;->verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V

    .line 77
    return-void
.end method
