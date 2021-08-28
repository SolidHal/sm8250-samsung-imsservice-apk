.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
.super Ljava/lang/Object;
.source "PaniGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PaniGeneratorBase"
.end annotation


# static fields
.field protected static final IWLAN_COUNTRY_TAG:Ljava/lang/String; = "country="

.field protected static final IWLAN_NODE_ID_TAG:Ljava/lang/String; = "i-wlan-node-id="

.field protected static final TEMPLATE_COUNTRY:Ljava/lang/String; = "<COUNTRY>"

.field protected static final TEMPLATE_NODE_ID:Ljava/lang/String; = "<NODE_ID>"

.field protected static final TEMPLATE_PREFIX:Ljava/lang/String; = "<PREFIX>"

.field protected static final TEMPLATE_TIMESTAMP:Ljava/lang/String; = "<TIMESTAMP>"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 124
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(II)Ljava/lang/String;
    .locals 1
    .param p1, "network"    # I
    .param p2, "phoneId"    # I

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(ILjava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "network"    # I
    .param p2, "fallbackPlmn"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 141
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fallbackPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    const-string v0, ""

    .line 143
    .local v0, "retVal":Ljava/lang/String;
    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    .line 144
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateWifiPani(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getPsPlmn(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "plmn":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, ""

    if-lt v2, v3, :cond_2

    const-string v2, "00000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generate: change to NW PLMN("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generate: invalid network operator "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    move-object v1, p2

    goto :goto_2

    .line 154
    :cond_3
    const-string/jumbo v2, "persist.ril.ims.sipserverDebug"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 155
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 156
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v2, :cond_4

    move-object v3, v4

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 157
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generate: use SIM operator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    nop

    .line 166
    :goto_2
    const/16 v2, 0xd

    if-ne p1, v2, :cond_5

    .line 167
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string/jumbo v3, "ril.ltenetworktype"

    invoke-interface {v2, p3, v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TDD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    const/16 p1, 0x1f

    .line 172
    :cond_5
    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    const/4 v2, 0x3

    if-eq p1, v2, :cond_8

    const/16 v2, 0x14

    if-eq p1, v2, :cond_7

    const/16 v2, 0x1e

    if-eq p1, v2, :cond_8

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 200
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PaniGenerator: Not supported network."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateEhrpdPani()Ljava/lang/String;

    move-result-object v0

    .line 190
    goto :goto_3

    .line 174
    :pswitch_1
    invoke-virtual {p0, p3, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateLtePani(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    goto :goto_3

    .line 197
    :cond_6
    invoke-virtual {p0, p3, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTdLtePani(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    goto :goto_3

    .line 177
    :cond_7
    invoke-virtual {p0, p3, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateNrPani(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    goto :goto_3

    .line 186
    :cond_8
    :pswitch_2
    invoke-virtual {p0, p3, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateUmtsPani(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    goto :goto_3

    .line 194
    :cond_9
    :pswitch_3
    invoke-virtual {p0, p3, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateGeranPani(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    nop

    .line 204
    :goto_3
    return-object v0

    .line 159
    :cond_a
    const/4 v2, 0x0

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected generateCountryCode()Ljava/lang/String;
    .locals 5

    .line 437
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    .line 438
    .local v0, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v0, :cond_1

    .line 439
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    .line 440
    .local v1, "currentLocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    const-string v2, ""

    .line 441
    .local v2, "countryCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 442
    iget-object v2, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    .line 444
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "country="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 449
    .end local v1    # "currentLocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .end local v2    # "countryCode":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method protected generateEhrpdPani()Ljava/lang/String;
    .locals 9

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "pAccessNwkInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$500(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getCurrentUATI(Landroid/content/Context;)[B

    move-result-object v1

    .line 343
    .local v1, "currentUATI":[B
    if-eqz v1, :cond_1

    .line 344
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateEhrpdPaniHeaderString(SectorId+SubnetLen) len= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "sSectorIdSubLen":Ljava/lang/String;
    array-length v3, v1

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    .line 348
    const/4 v3, 0x1

    new-array v4, v3, [B

    .line 350
    .local v4, "bArrSubLen":[B
    const/16 v5, 0x10

    new-array v6, v5, [B

    .line 351
    .local v6, "bArrSectorId":[B
    const/4 v7, 0x0

    aget-byte v8, v1, v7

    aput-byte v8, v4, v7

    .line 357
    invoke-static {v1, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    invoke-static {v6}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "sSectorId":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "sSubnetLen":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3GPP2-1X-HRPD;ci-3gpp2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .end local v2    # "sSectorIdSubLen":Ljava/lang/String;
    .end local v3    # "sSectorId":Ljava/lang/String;
    .end local v4    # "bArrSubLen":[B
    .end local v5    # "sSubnetLen":Ljava/lang/String;
    .end local v6    # "bArrSectorId":[B
    :cond_0
    goto :goto_0

    .line 366
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Got NULL UATI from RIL!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-object v0
.end method

.method protected generateGeranPani(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$400(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3GPP-GERAN;cgi-3gpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$400(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s%04x%04x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Cell Id : return empty."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    const-string v0, ""

    return-object v0
.end method

.method protected generateIwlanNodeId()Ljava/lang/String;
    .locals 5

    .line 416
    const-string v0, ""

    .line 417
    .local v0, "iWlanNode":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$700(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "bssid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i-wlan-node-id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_0
    return-object v0
.end method

.method protected generateLtePani(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$200(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$200(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s%04x%07x"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "cellLocationStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3GPP-E-UTRAN-FDD;utran-cell-id-3gpp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 282
    .end local v0    # "cellLocationStr":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Cell Id : return empty."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    const-string v0, ""

    return-object v0
.end method

.method protected generateNrPani(ILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # Ljava/lang/String;

    .line 250
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$200(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v2

    .line 251
    .local v2, "tac":I
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$300(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)J

    move-result-wide v3

    .line 252
    .local v3, "nrCid":J
    const-string v5, ""

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_0

    goto/16 :goto_0

    .line 257
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v6

    .line 258
    .local v6, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const-string v7, "3GPP-NR-TDD;utran-cell-id-3gpp="

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    const-string v12, "%s%06x%09x"

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p2, v11, v10

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v8

    .line 265
    invoke-static {v7, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 268
    :cond_1
    iget-object v13, v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v13, v13, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string/jumbo v14, "ril.nrnetworktype"

    invoke-interface {v13, v1, v14, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "accessType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NR Access Type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v13, "TDD"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 271
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p2, v11, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-static {v7, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 272
    :cond_2
    const-string v7, "FDD"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "3GPP-NR-FDD;utran-cell-id-3gpp="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p2, v11, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-static {v13, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 275
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "3GPP-NR;utran-cell-id-3gpp="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p2, v11, v10

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v8

    .line 275
    invoke-static {v13, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 253
    .end local v5    # "accessType":Ljava/lang/String;
    .end local v6    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_4
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid tac or nrCid : return empty."

    invoke-static {v6, v1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    return-object v5
.end method

.method protected generateTdLtePani(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$200(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3GPP-E-UTRAN-TDD;utran-cell-id-3gpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$200(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s%04x%07x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Cell Id : return empty."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const-string v0, ""

    return-object v0
.end method

.method protected generateTimeStamp(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .line 427
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 428
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 429
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_0

    .line 430
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .line 432
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 433
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local-time-zone=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected generateUmtsPani(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # Ljava/lang/String;

    .line 304
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 305
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_0

    .line 306
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%07x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "tempCid":Ljava/lang/String;
    const-string v4, "7fffffff"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->queryCellInfoForQualcomm()V

    .line 313
    .end local v3    # "tempCid":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$400(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3GPP-UTRAN-FDD;utran-cell-id-3gpp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$400(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "%s%04x%07x"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 314
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid Cell Id : return empty."

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    const-string v1, ""

    return-object v1
.end method

.method protected generateWifiPani(I)Ljava/lang/String;
    .locals 7
    .param p1, "phoneId"    # I

    .line 372
    const-string v0, "<PREFIX><NODE_ID>"

    .line 373
    .local v0, "paniFormat":Ljava/lang/String;
    const-string v1, "iwlan_pani_format"

    const-string v2, "<PREFIX><NODE_ID>"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "paniFormatFromGS":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 376
    move-object v0, v1

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$600(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Z

    move-result v2

    const-string v3, "<PREFIX>"

    if-eqz v2, :cond_1

    .line 388
    const-string v2, "<PREFIX><COUNTRY>"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_1
    const-string v2, "><"

    const-string v4, ">;<"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateWiFiPani: Format for generating PANI - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    const-string v2, "IEEE-802.11"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateIwlanNodeId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<NODE_ID>"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<COUNTRY>"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTimeStamp(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<TIMESTAMP>"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "normalizedPani":Ljava/lang/String;
    :goto_0
    const-string v3, ";;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    const-string v4, ";"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 407
    .local v3, "lastIdx":I
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_3

    .line 408
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 410
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateWiFiPani: normalized PANI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    return-object v2
.end method

.method protected getPsPlmn(I)Ljava/lang/String;
    .locals 9
    .param p1, "phoneId"    # I

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "retPlmn":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$100(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCellLocation(IZ)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 210
    .local v1, "cellLocation":Landroid/telephony/CellLocation;
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_2

    .line 211
    move-object v3, v1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    .line 213
    .local v3, "location":Landroid/telephony/cdma/CdmaCellLocation;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataPlmn"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 215
    .local v4, "getDataPlmn":Ljava/lang/reflect/Method;
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x5

    if-lt v2, v6, :cond_1

    const-string v2, "00000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    nop

    .line 228
    goto :goto_1

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rePlmn by RIL is not guaranteed to be a numeric String. : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-object v5

    .line 217
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDataPlmn from RIL returns invalid dataPlmn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    .line 218
    return-object v5

    .line 226
    :catch_1
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2

    .line 231
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "getDataPlmn":Ljava/lang/reflect/Method;
    :goto_1
    goto :goto_2

    .line 229
    :catch_2
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 233
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "location":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataPlmn returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v0
.end method
