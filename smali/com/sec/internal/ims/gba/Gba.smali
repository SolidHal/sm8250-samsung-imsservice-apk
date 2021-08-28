.class public Lcom/sec/internal/ims/gba/Gba;
.super Ljava/lang/Object;
.source "Gba.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/gba/Gba;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/gba/Gba;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/gba/Gba;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "t"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/gba/Gba;->threshold:I

    .line 29
    iput p1, p0, Lcom/sec/internal/ims/gba/Gba;->threshold:I

    .line 30
    new-instance v0, Lcom/sec/internal/ims/gba/GbaStore;

    invoke-direct {v0}, Lcom/sec/internal/ims/gba/GbaStore;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 132
    return v0

    .line 134
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 135
    return v1

    .line 137
    :cond_1
    instance-of v2, p1, Lcom/sec/internal/ims/gba/Gba;

    if-nez v2, :cond_2

    .line 138
    return v1

    .line 140
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/gba/Gba;

    .line 141
    .local v2, "other":Lcom/sec/internal/ims/gba/Gba;
    iget-object v3, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-nez v3, :cond_3

    .line 142
    iget-object v3, v2, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-eqz v3, :cond_4

    .line 143
    return v1

    .line 145
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 146
    return v1

    .line 148
    :cond_4
    return v0
.end method

.method public getGbaValue([B[B)Lcom/sec/internal/ims/gba/GbaValue;
    .locals 1
    .param p1, "nafid"    # [B
    .param p2, "gbaType"    # [B

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v0

    return-object v0
.end method

.method public getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;
    .locals 5
    .param p1, "nafid"    # [B
    .param p2, "gbaType"    # [B
    .param p3, "phoneId"    # I

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "storeValue":Lcom/sec/internal/ims/gba/GbaValue;
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v2, p1, p2, p3}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 80
    .local v2, "storeKey":Lcom/sec/internal/ims/gba/Gbakey;
    iget-object v3, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/gba/GbaStore;->hasKey(Lcom/sec/internal/ims/gba/Gbakey;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    return-object v1

    .line 84
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/gba/GbaStore;->getKeys(Lcom/sec/internal/ims/gba/Gbakey;)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/sec/internal/ims/gba/GbaValue;->getValidity()Ljava/util/Date;

    move-result-object v3

    .line 87
    .local v3, "keyLifeTime":Ljava/util/Date;
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/gba/Gba;->isKeyExpired(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/gba/GbaStore;->removeKey(Lcom/sec/internal/ims/gba/Gbakey;)V

    .line 90
    return-object v1

    .line 93
    :cond_2
    return-object v0

    .line 76
    .end local v2    # "storeKey":Lcom/sec/internal/ims/gba/Gbakey;
    .end local v3    # "keyLifeTime":Ljava/util/Date;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .line 123
    const/16 v0, 0x1f

    .line 124
    .local v0, "primeHash":I
    const/4 v1, 0x1

    .line 125
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 126
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isKeyExpired(Ljava/util/Date;)Z
    .locals 9
    .param p1, "keyLifeTime"    # Ljava/util/Date;

    .line 98
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 99
    .local v0, "currentdate":Ljava/util/Date;
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 100
    sget-object v1, Lcom/sec/internal/ims/gba/Gba;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Date and time in GMT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  key life time in GMT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget v5, p0, Lcom/sec/internal/ims/gba/Gba;->threshold:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    return v1

    .line 105
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public removeGbaKey([B[BI)V
    .locals 2
    .param p1, "nafid"    # [B
    .param p2, "gbaType"    # [B
    .param p3, "phoneId"    # I

    .line 110
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 115
    .local v0, "storeKey":Lcom/sec/internal/ims/gba/Gbakey;
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/gba/GbaStore;->hasKey(Lcom/sec/internal/ims/gba/Gbakey;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/gba/GbaStore;->removeKey(Lcom/sec/internal/ims/gba/Gbakey;)V

    .line 119
    return-void

    .line 111
    .end local v0    # "storeKey":Lcom/sec/internal/ims/gba/Gbakey;
    :cond_2
    :goto_0
    return-void
.end method

.method public storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "gbaType"    # [B
    .param p2, "nafid"    # [B
    .param p3, "Ks_ext_Naf"    # [B
    .param p4, "lifeTime"    # Ljava/lang/String;
    .param p5, "Btid"    # Ljava/lang/String;

    .line 41
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "gbaType"    # [B
    .param p2, "nafid"    # [B
    .param p3, "Ks_ext_Naf"    # [B
    .param p4, "lifeTime"    # Ljava/lang/String;
    .param p5, "Btid"    # Ljava/lang/String;
    .param p6, "phoneId"    # I

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "keyLifeTime":Ljava/util/Date;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e1":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 57
    .end local v1    # "e1":Ljava/text/ParseException;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/gba/Gba;->isKeyExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v1, p2, p1, p6}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 60
    .local v1, "storeKey":Lcom/sec/internal/ims/gba/Gbakey;
    new-instance v2, Lcom/sec/internal/ims/gba/GbaValue;

    invoke-direct {v2, p3, v0, p5}, Lcom/sec/internal/ims/gba/GbaValue;-><init>([BLjava/util/Date;Ljava/lang/String;)V

    .line 63
    .local v2, "StoreValue":Lcom/sec/internal/ims/gba/GbaValue;
    iget-object v3, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/gba/GbaStore;->putKeys(Lcom/sec/internal/ims/gba/Gbakey;Lcom/sec/internal/ims/gba/GbaValue;)V

    .line 66
    .end local v1    # "storeKey":Lcom/sec/internal/ims/gba/Gbakey;
    .end local v2    # "StoreValue":Lcom/sec/internal/ims/gba/GbaValue;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gba [gbaStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
