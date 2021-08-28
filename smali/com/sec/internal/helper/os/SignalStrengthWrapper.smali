.class public Lcom/sec/internal/helper/os/SignalStrengthWrapper;
.super Ljava/lang/Object;
.source "SignalStrengthWrapper.java"


# instance fields
.field private final mSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->describeContents()I

    move-result v0

    return v0
.end method

.method public getCdmaDbm()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    return v0
.end method

.method public getDbm(I)I
    .locals 7
    .param p1, "networkType"    # I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "cellSignalStrength":Landroid/telephony/CellSignalStrength;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/telephony/SignalStrength;

    const-string v3, "getCellSignalStrengths"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 79
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v4, v1, [Ljava/lang/Object;

    .line 80
    invoke-static {v2, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 82
    .local v3, "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 83
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellSignalStrength;

    .line 84
    .local v5, "css":Landroid/telephony/CellSignalStrength;
    const/16 v6, 0xd

    if-ne p1, v6, :cond_0

    instance-of v6, v5, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v6, :cond_0

    .line 85
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthLte;

    move-object v0, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    const/4 v6, 0x4

    if-ne p1, v6, :cond_1

    instance-of v6, v5, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v6, :cond_1

    .line 88
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthCdma;

    move-object v0, v4

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/16 v6, 0x11

    if-ne p1, v6, :cond_2

    instance-of v6, v5, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v6, :cond_2

    .line 91
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthTdscdma;

    move-object v0, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/16 v6, 0x10

    if-ne p1, v6, :cond_3

    instance-of v6, v5, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v6, :cond_3

    .line 94
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthGsm;

    move-object v0, v4

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/16 v6, 0x14

    if-ne p1, v6, :cond_4

    instance-of v6, v5, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v6, :cond_4

    .line 97
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthNr;

    move-object v0, v4

    .line 98
    goto :goto_1

    .line 100
    .end local v5    # "css":Landroid/telephony/CellSignalStrength;
    :cond_4
    goto :goto_0

    .line 102
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 103
    return v1

    .line 105
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 106
    .end local v0    # "cellSignalStrength":Landroid/telephony/CellSignalStrength;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    return v1
.end method

.method public getEvdoDbm()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v0

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v0

    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    return v0
.end method

.method public getInvalidSignalStrength()I
    .locals 4

    .line 296
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 299
    .local v1, "inValidSignal":Ljava/lang/Integer;
    :try_start_0
    const-string v2, "SIGNAL_STRENGTH_NONE_OR_UNKNOWN"

    const-class v3, Landroid/telephony/SignalStrength;

    invoke-static {v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 301
    if-nez v1, :cond_0

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 306
    :cond_0
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 308
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    return v0
.end method

.method public getLteLevel()I
    .locals 7

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "cellSignalStrength":Landroid/telephony/CellSignalStrengthLte;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/telephony/SignalStrength;

    const-string v3, "getCellSignalStrengths"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 247
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v4, v1, [Ljava/lang/Object;

    .line 248
    invoke-static {v2, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 250
    .local v3, "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 251
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellSignalStrength;

    .line 252
    .local v5, "css":Landroid/telephony/CellSignalStrength;
    instance-of v6, v5, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v6, :cond_0

    .line 253
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthLte;

    move-object v0, v4

    .line 254
    goto :goto_1

    .line 256
    .end local v5    # "css":Landroid/telephony/CellSignalStrength;
    :cond_0
    goto :goto_0

    .line 258
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 259
    return v1

    .line 261
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 262
    .end local v0    # "cellSignalStrength":Landroid/telephony/CellSignalStrengthLte;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 266
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    return v1
.end method

.method public getLteRsrp()I
    .locals 7

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "cellSignalStrength":Landroid/telephony/CellSignalStrengthLte;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/telephony/SignalStrength;

    const-string v3, "getCellSignalStrengths"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 117
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v4, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {v2, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 120
    .local v3, "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellSignalStrength;

    .line 122
    .local v5, "css":Landroid/telephony/CellSignalStrength;
    instance-of v6, v5, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v6, :cond_0

    .line 123
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthLte;

    move-object v0, v4

    .line 124
    goto :goto_1

    .line 126
    .end local v5    # "css":Landroid/telephony/CellSignalStrength;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 129
    return v1

    .line 131
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 132
    .end local v0    # "cellSignalStrength":Landroid/telephony/CellSignalStrengthLte;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 136
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    return v1
.end method

.method public getLteRsrq()I
    .locals 7

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "cellSignalStrength":Landroid/telephony/CellSignalStrengthLte;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/telephony/SignalStrength;

    const-string v3, "getCellSignalStrengths"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 143
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v4, v1, [Ljava/lang/Object;

    .line 144
    invoke-static {v2, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 146
    .local v3, "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 147
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellSignalStrength;

    .line 148
    .local v5, "css":Landroid/telephony/CellSignalStrength;
    instance-of v6, v5, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v6, :cond_0

    .line 149
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthLte;

    move-object v0, v4

    .line 150
    goto :goto_1

    .line 152
    .end local v5    # "css":Landroid/telephony/CellSignalStrength;
    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 155
    return v1

    .line 157
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 158
    .end local v0    # "cellSignalStrength":Landroid/telephony/CellSignalStrengthLte;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    return v1
.end method

.method public getNrLevel()I
    .locals 7

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "cellSignalStrength":Landroid/telephony/CellSignalStrengthNr;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/telephony/SignalStrength;

    const-string v3, "getCellSignalStrengths"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 273
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v4, v1, [Ljava/lang/Object;

    .line 274
    invoke-static {v2, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 276
    .local v3, "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 277
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellSignalStrength;

    .line 278
    .local v5, "css":Landroid/telephony/CellSignalStrength;
    instance-of v6, v5, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v6, :cond_0

    .line 279
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthNr;

    move-object v0, v4

    .line 280
    goto :goto_1

    .line 282
    .end local v5    # "css":Landroid/telephony/CellSignalStrength;
    :cond_0
    goto :goto_0

    .line 284
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 285
    return v1

    .line 287
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 288
    .end local v0    # "cellSignalStrength":Landroid/telephony/CellSignalStrengthNr;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 292
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    return v1
.end method

.method public getNrSsRsrp()I
    .locals 7

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "cellSignalStrength":Landroid/telephony/CellSignalStrengthNr;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/telephony/SignalStrength;

    const-string v3, "getCellSignalStrengths"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 169
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v4, v1, [Ljava/lang/Object;

    .line 170
    invoke-static {v2, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 172
    .local v3, "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 173
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellSignalStrength;

    .line 174
    .local v5, "css":Landroid/telephony/CellSignalStrength;
    instance-of v6, v5, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v6, :cond_0

    .line 175
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthNr;

    move-object v0, v4

    .line 176
    goto :goto_1

    .line 178
    .end local v5    # "css":Landroid/telephony/CellSignalStrength;
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 181
    return v1

    .line 183
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 184
    .end local v0    # "cellSignalStrength":Landroid/telephony/CellSignalStrengthNr;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 188
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    return v1
.end method

.method public getNrSsRsrq()I
    .locals 7

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "cellSignalStrength":Landroid/telephony/CellSignalStrengthNr;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/telephony/SignalStrength;

    const-string v3, "getCellSignalStrengths"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 195
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v4, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {v2, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 198
    .local v3, "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 199
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellSignalStrength;

    .line 200
    .local v5, "css":Landroid/telephony/CellSignalStrength;
    instance-of v6, v5, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v6, :cond_0

    .line 201
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthNr;

    move-object v0, v4

    .line 202
    goto :goto_1

    .line 204
    .end local v5    # "css":Landroid/telephony/CellSignalStrength;
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 207
    return v1

    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrq()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 210
    .end local v0    # "cellSignalStrength":Landroid/telephony/CellSignalStrengthNr;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 214
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    return v1
.end method

.method public getNrSsSinr()I
    .locals 7

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "cellSignalStrength":Landroid/telephony/CellSignalStrengthNr;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/telephony/SignalStrength;

    const-string v3, "getCellSignalStrengths"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 221
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v4, v1, [Ljava/lang/Object;

    .line 222
    invoke-static {v2, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 224
    .local v3, "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 225
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellSignalStrength;

    .line 226
    .local v5, "css":Landroid/telephony/CellSignalStrength;
    instance-of v6, v5, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v6, :cond_0

    .line 227
    move-object v4, v5

    check-cast v4, Landroid/telephony/CellSignalStrengthNr;

    move-object v0, v4

    .line 228
    goto :goto_1

    .line 230
    .end local v5    # "css":Landroid/telephony/CellSignalStrength;
    :cond_0
    goto :goto_0

    .line 232
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 233
    return v1

    .line 235
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 236
    .end local v0    # "cellSignalStrength":Landroid/telephony/CellSignalStrengthNr;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "cellSignalStrengthsList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 240
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    return v1
.end method

.method public isGsm()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    return v0
.end method

.method public isValidSignal()Z
    .locals 4

    .line 312
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 315
    .local v1, "inValidSignal":Ljava/lang/Integer;
    :try_start_0
    const-string v2, "SIGNAL_STRENGTH_NONE_OR_UNKNOWN"

    const-class v3, Landroid/telephony/SignalStrength;

    invoke-static {v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 317
    if-nez v1, :cond_0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 322
    :cond_0
    goto :goto_0

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 324
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    const/4 v0, 0x1

    return v0

    .line 327
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 27
    iget-object v0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    .line 28
    return-void
.end method
