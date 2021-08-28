.class public Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;
.super Landroid/os/Handler;
.source "TmoEcholocateIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;
    }
.end annotation


# static fields
.field private static final EVENT_ECHOLOCATE_RECEIVED:I = 0x1

.field private static final EVENT_ECHOLOCATE_REMOVE_CALLID_CACHE:I = 0x3

.field private static final EVENT_ECHOLOCATE_SIP_RECEIVED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "EcholocateBroadcaster"

.field private static final NR_STATUS_CONNECTED:I = 0x3

.field private static final SIGNATURES:Landroid/content/pm/Signature;

.field private static final SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;


# instance fields
.field private mCallIDList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mICDVResult:Z

.field private mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SIGNATURES:Landroid/content/pm/Signature;

    .line 143
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "module"    # Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->pm:Landroid/content/pm/PackageManager;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mICDVResult:Z

    .line 64
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 173
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 174
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->pm:Landroid/content/pm/PackageManager;

    .line 176
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMiscHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 178
    return-void
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;Lcom/sec/internal/helper/os/SignalStrengthWrapper;)Lcom/sec/internal/helper/os/SignalStrengthWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;
    .param p1, "x1"    # Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    return-object p1
.end method

.method private checkEchoAppSignatureKey()Z
    .locals 9

    .line 565
    const/4 v0, 0x0

    .line 567
    .local v0, "sign":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->pm:Landroid/content/pm/PackageManager;

    const-string v3, "com.tmobile.echolocate"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 570
    .local v2, "signatures":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_2

    .line 571
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 572
    .local v5, "signature":Landroid/content/pm/Signature;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_1

    .line 573
    aget-object v7, v2, v6

    sget-object v8, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 575
    goto :goto_2

    .line 572
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 571
    .end local v5    # "signature":Landroid/content/pm/Signature;
    .end local v6    # "i":I
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    :cond_2
    nop

    .line 584
    return v0

    .line 580
    :catch_0
    move-exception v2

    .line 581
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "EcholocateBroadcaster"

    const-string v4, "Package is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v1
.end method

.method private checkICDVerification()Z
    .locals 7

    .line 515
    const/4 v0, -0x1

    .line 516
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 517
    .local v1, "isLite":Z
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 518
    .local v2, "mPackageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 519
    const-string v3, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 521
    :cond_0
    if-nez v1, :cond_2

    .line 522
    new-instance v3, Lcom/sec/icdverification/ICDVerification;

    invoke-direct {v3}, Lcom/sec/icdverification/ICDVerification;-><init>()V

    .line 523
    .local v3, "icdv":Lcom/sec/icdverification/ICDVerification;
    invoke-static {}, Lcom/sec/icdverification/ICDVerification;->check()I

    move-result v0

    .line 525
    const-string v4, "EcholocateBroadcaster"

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 526
    const-string v6, "ICDV OK"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return v5

    .line 529
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICDV return error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v4, 0x0

    return v4

    .line 533
    .end local v3    # "icdv":Lcom/sec/icdverification/ICDVerification;
    :cond_2
    const-string/jumbo v3, "ro.boot.flash.locked"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private checkPackageSignatureKey()Z
    .locals 5

    .line 543
    const/4 v0, 0x0

    .line 545
    .local v0, "sign":Z
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->pm:Landroid/content/pm/PackageManager;

    const-string v2, "com.tmobile.pr.mytmobile"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 548
    .local v1, "signatures":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_1

    .line 549
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 550
    aget-object v3, v1, v2

    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 551
    const/4 v0, 0x1

    .line 552
    goto :goto_1

    .line 549
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    .end local v1    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    nop

    .line 560
    return v0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "EcholocateBroadcaster"

    const-string v3, "Package is not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v2, 0x0

    return v2
.end method

.method private checkSecurity()Z
    .locals 1

    .line 538
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mICDVResult:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkPackageSignatureKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkEchoAppSignatureKey()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLteBand(IZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "isEpdgCall"    # Z
    .param p3, "nwType"    # Ljava/lang/String;

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ril.lteband"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 589
    .local v0, "band":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "strband":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    const-string v3, "255"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    :cond_0
    const-string v2, "NA"

    .line 593
    :cond_1
    if-eqz p3, :cond_2

    const-string v3, "SA5G"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v4, "EcholocateBroadcaster"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 597
    const-string v3, "isUsingCarrierAggregation()"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ril.ltescellbands"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 599
    .local v1, "cellBands":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsingCarrierAggregation() strband= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " nwType== "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v1    # "cellBands":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "strband= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-object v2
.end method

.method private getNetworkType(Z)Ljava/lang/String;
    .locals 3
    .param p1, "isEpdgCall"    # Z

    .line 231
    if-eqz p1, :cond_0

    .line 232
    const-string v0, "WFC2"

    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "NA"

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    .line 236
    const-string v0, "SA5G"

    return-object v0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    .line 240
    .local v0, "nrState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 241
    const-string v1, "ENDC"

    return-object v1

    .line 243
    :cond_2
    const-string v1, "LTE"

    return-object v1

    .line 246
    .end local v0    # "nrState":I
    :cond_3
    return-object v1

    .line 250
    :cond_4
    return-object v1
.end method

.method private getNwStateSignal(IZ)Ljava/lang/String;
    .locals 23
    .param p1, "phoneId"    # I
    .param p2, "isEpdgCall"    # Z

    .line 608
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ril.signal.param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "signal":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 610
    .local v3, "resultBuffer":Ljava/lang/StringBuffer;
    const-string v5, "NA"

    .line 611
    .local v5, "rsrp":Ljava/lang/String;
    const-string v6, "NA"

    .line 612
    .local v6, "rsrq":Ljava/lang/String;
    const-string v7, "NA"

    .line 613
    .local v7, "rscp":Ljava/lang/String;
    const-string v8, "NA"

    .line 614
    .local v8, "rssi":Ljava/lang/String;
    const-string v9, "NA"

    .line 615
    .local v9, "sinr":Ljava/lang/String;
    const/16 v10, 0xd

    .line 616
    .local v10, "networkType":I
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v11, :cond_0

    .line 617
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    .line 619
    :cond_0
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    if-eqz v11, :cond_1

    .line 620
    invoke-virtual {v11, v10}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getDbm(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 622
    :cond_1
    const-string v11, "NA"

    .line 623
    .local v11, "wifiRssi":Ljava/lang/String;
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 625
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v13, 0x3

    const/4 v14, 0x1

    const-string v15, ";"

    if-eqz p2, :cond_4

    .line 626
    if-eqz v12, :cond_3

    .line 627
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v16

    .line 628
    .local v16, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v16, :cond_2

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    :cond_2
    move-object/from16 v17, v4

    :goto_0
    move-object/from16 v11, v17

    .line 631
    .end local v16    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;I)I

    move-result v2

    if-ne v2, v13, :cond_4

    .line 633
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    const-string v2, ";NA;NA;NA;NA;NA;NA;"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 639
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v14, "]"

    const-string v13, "EcholocateBroadcaster"

    move-object/from16 v18, v5

    .end local v5    # "rsrp":Ljava/lang/String;
    .local v18, "rsrp":Ljava/lang/String;
    const-string v5, ";NA;"

    if-eqz v2, :cond_5

    .line 640
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v10

    goto/16 :goto_4

    .line 642
    :cond_5
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    if-eqz v2, :cond_9

    .line 643
    invoke-virtual {v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrLevel()I

    move-result v2

    move-object/from16 v19, v6

    .end local v6    # "rsrq":Ljava/lang/String;
    .local v19, "rsrq":Ljava/lang/String;
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v6}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getInvalidSignalStrength()I

    move-result v6

    move-object/from16 v20, v7

    .end local v7    # "rscp":Ljava/lang/String;
    .local v20, "rscp":Ljava/lang/String;
    const-string v7, " "

    if-eq v2, v6, :cond_6

    .line 644
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsRsrp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 645
    .end local v18    # "rsrp":Ljava/lang/String;
    .local v2, "rsrp":Ljava/lang/String;
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v6}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsRsrq()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 646
    .end local v19    # "rsrq":Ljava/lang/String;
    .restart local v6    # "rsrq":Ljava/lang/String;
    move-object/from16 v21, v8

    .end local v8    # "rssi":Ljava/lang/String;
    .local v21, "rssi":Ljava/lang/String;
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v8}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsSinr()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 647
    .end local v9    # "sinr":Ljava/lang/String;
    .local v8, "sinr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v10

    .end local v10    # "networkType":I
    .local v22, "networkType":I
    const-string v10, "Nr [ rsrp: rsrq: sinr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    goto :goto_1

    .line 649
    .end local v2    # "rsrp":Ljava/lang/String;
    .end local v6    # "rsrq":Ljava/lang/String;
    .end local v21    # "rssi":Ljava/lang/String;
    .end local v22    # "networkType":I
    .local v8, "rssi":Ljava/lang/String;
    .restart local v9    # "sinr":Ljava/lang/String;
    .restart local v10    # "networkType":I
    .restart local v18    # "rsrp":Ljava/lang/String;
    .restart local v19    # "rsrq":Ljava/lang/String;
    :cond_6
    move-object/from16 v21, v8

    move/from16 v22, v10

    .end local v8    # "rssi":Ljava/lang/String;
    .end local v10    # "networkType":I
    .restart local v21    # "rssi":Ljava/lang/String;
    .restart local v22    # "networkType":I
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 650
    .end local v18    # "rsrp":Ljava/lang/String;
    .restart local v2    # "rsrp":Ljava/lang/String;
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v6}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrq()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 651
    .end local v19    # "rsrq":Ljava/lang/String;
    .restart local v6    # "rsrq":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Default LTE [ rsrp: rsrq:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_1
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v7}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->isGsm()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v7}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->isValidSignal()Z

    move-result v7

    if-nez v7, :cond_8

    .line 654
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v7, :cond_7

    .line 655
    const/16 v10, 0x10

    .end local v22    # "networkType":I
    .restart local v10    # "networkType":I
    goto :goto_2

    .line 654
    .end local v10    # "networkType":I
    .restart local v22    # "networkType":I
    :cond_7
    move/from16 v10, v22

    .line 657
    .end local v22    # "networkType":I
    .restart local v10    # "networkType":I
    :goto_2
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v7, v10}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getDbm(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .end local v20    # "rscp":Ljava/lang/String;
    .restart local v7    # "rscp":Ljava/lang/String;
    goto :goto_3

    .line 659
    .end local v7    # "rscp":Ljava/lang/String;
    .end local v10    # "networkType":I
    .restart local v20    # "rscp":Ljava/lang/String;
    .restart local v22    # "networkType":I
    :cond_8
    move-object/from16 v7, v20

    move/from16 v10, v22

    .end local v20    # "rscp":Ljava/lang/String;
    .end local v22    # "networkType":I
    .restart local v7    # "rscp":Ljava/lang/String;
    .restart local v10    # "networkType":I
    :goto_3
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 642
    .end local v2    # "rsrp":Ljava/lang/String;
    .end local v21    # "rssi":Ljava/lang/String;
    .restart local v8    # "rssi":Ljava/lang/String;
    .restart local v18    # "rsrp":Ljava/lang/String;
    :cond_9
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v10

    .line 664
    .end local v6    # "rsrq":Ljava/lang/String;
    .end local v7    # "rscp":Ljava/lang/String;
    .end local v8    # "rssi":Ljava/lang/String;
    .end local v10    # "networkType":I
    .restart local v19    # "rsrq":Ljava/lang/String;
    .restart local v20    # "rscp":Ljava/lang/String;
    .restart local v21    # "rssi":Ljava/lang/String;
    .restart local v22    # "networkType":I
    :goto_4
    move-object/from16 v2, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v10, v22

    .end local v18    # "rsrp":Ljava/lang/String;
    .end local v19    # "rsrq":Ljava/lang/String;
    .end local v20    # "rscp":Ljava/lang/String;
    .end local v22    # "networkType":I
    .restart local v2    # "rsrp":Ljava/lang/String;
    .restart local v6    # "rsrq":Ljava/lang/String;
    .restart local v7    # "rscp":Ljava/lang/String;
    .restart local v10    # "networkType":I
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "rscp":Ljava/lang/String;
    .local v18, "rscp":Ljava/lang/String;
    const-string/jumbo v7, "signal["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 667
    .local v7, "signalStr":[Ljava/lang/String;
    array-length v8, v7

    const-string v13, "NA"

    const/4 v14, 0x3

    if-lt v8, v14, :cond_11

    .line 668
    const/4 v8, 0x0

    aget-object v14, v7, v8

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v8, "255"

    if-nez v14, :cond_b

    move-object/from16 v17, v1

    const/4 v14, 0x0

    .end local v1    # "signal":Ljava/lang/String;
    .local v17, "signal":Ljava/lang/String;
    aget-object v1, v7, v14

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    .line 669
    :cond_a
    aget-object v1, v7, v14

    goto :goto_7

    .line 668
    .end local v17    # "signal":Ljava/lang/String;
    .restart local v1    # "signal":Ljava/lang/String;
    :cond_b
    move-object/from16 v17, v1

    .line 669
    .end local v1    # "signal":Ljava/lang/String;
    .restart local v17    # "signal":Ljava/lang/String;
    :goto_6
    move-object v1, v13

    .line 668
    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    if-eqz v9, :cond_c

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrLevel()I

    move-result v1

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-virtual {v14}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getInvalidSignalStrength()I

    move-result v14

    if-eq v1, v14, :cond_c

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 679
    :cond_c
    const/4 v1, 0x2

    aget-object v14, v7, v1

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    aget-object v14, v7, v1

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_8

    :cond_d
    aget-object v13, v7, v1

    :cond_e
    :goto_8
    aput-object v13, v7, v1

    .line 680
    const/4 v13, 0x1

    aget-object v14, v7, v13

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    aget-object v4, v7, v13

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_9

    .line 681
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v13

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_10
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v7, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    :goto_a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 685
    .end local v17    # "signal":Ljava/lang/String;
    .restart local v1    # "signal":Ljava/lang/String;
    :cond_11
    move-object/from16 v17, v1

    .end local v1    # "signal":Ljava/lang/String;
    .restart local v17    # "signal":Ljava/lang/String;
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    const-string v1, ";NA;NA;"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    :goto_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneIdFromSessionId(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "phoneId":I
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 710
    return v0

    .line 712
    :cond_0
    div-int/lit8 v0, p1, 0xa

    .line 713
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 714
    const/4 v0, 0x0

    .line 716
    :cond_1
    return v0
.end method

.method private getSDPContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "lawSdp"    # Ljava/lang/String;

    .line 416
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "resultBuffer":Ljava/lang/StringBuffer;
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "sdpParse":[Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 420
    aget-object v4, v1, v3

    const-string v5, "c="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v3

    const-string v5, "a=rtpmap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v3

    .line 421
    const-string v5, "a=recvonly"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v3

    const-string v5, "a=sendonly"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v3

    .line 422
    const-string v5, "a=sendrecv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    :cond_0
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTimeStamp(I)Ljava/lang/String;
    .locals 6
    .param p1, "ms"    # I

    .line 695
    if-nez p1, :cond_0

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 698
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 699
    .local v0, "timestemp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    sub-long/2addr v2, v4

    .line 700
    .end local v0    # "timestemp":J
    .local v2, "timestemp":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isEndCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cseqName"    # Ljava/lang/String;

    .line 408
    const-string v0, "CANCEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BYE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private onEcholocateEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 13
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 256
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkSecurity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;

    .line 258
    .local v0, "noti":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getType()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    if-ne v1, v2, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getSignalData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-result-object v1

    .line 261
    .local v1, "signalMsg":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getSessionid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 262
    .local v2, "sessionId":I
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->isEpdgCall()Z

    move-result v9

    .line 263
    .local v9, "isEpdgCall":Z
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getPhoneIdFromSessionId(I)I

    move-result v10

    .line 264
    .local v10, "phoneId":I
    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNetworkType(Z)Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, "nwType":Ljava/lang/String;
    new-instance v12, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;

    .line 266
    invoke-direct {p0, v10, v9, v11}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v10, v9}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    .line 267
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v12

    move-object v4, v1

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v3, "echoSignallingData":Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v1    # "signalMsg":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    .end local v2    # "sessionId":I
    .end local v3    # "echoSignallingData":Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;
    .end local v9    # "isEpdgCall":Z
    .end local v10    # "phoneId":I
    .end local v11    # "nwType":Ljava/lang/String;
    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getType()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->rtpMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    if-ne v1, v2, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getRtpData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    move-result-object v1

    .line 272
    .local v1, "rtpMsg":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendTmoEcholocateRTP(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;)V

    goto :goto_1

    .line 270
    .end local v1    # "rtpMsg":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;
    :cond_1
    :goto_0
    nop

    .line 274
    .end local v0    # "noti":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
    :goto_1
    goto :goto_2

    .line 275
    :cond_2
    const-string v0, "EcholocateBroadcaster"

    const-string v1, "Do not broadcast. ICDV or Signature key is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_2
    return-void
.end method

.method private sendTmoEcholocateRTP(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;)V
    .locals 17
    .param p1, "rtpMsg"    # Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    .line 430
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 431
    .local v0, "dir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 432
    .local v2, "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 433
    .local v3, "callNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 434
    .local v4, "echoAppCallIdListForRTP":Ljava/lang/String;
    const/4 v5, 0x0

    .line 435
    .local v5, "rtpCallId":Ljava/lang/String;
    const-string v6, "LTE"

    .line 437
    .local v6, "nwType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "EcholocateBroadcaster"

    if-eqz v7, :cond_0

    .line 438
    const-string/jumbo v7, "sendTmoEcholocateRTP :: Session Id is NULL"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 442
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDir()Ljava/lang/String;

    move-result-object v7

    .line 444
    .end local v0    # "dir":Ljava/lang/String;
    .local v7, "dir":Ljava/lang/String;
    const-string v0, "DL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v9, "diagandroid.phone.RTPDLStat"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .end local v2    # "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    .local v0, "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v2

    const-string v9, "RTPDownlinkStatusLossRate"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object v2

    const-string v9, "RTPDownlinkStatusDelay"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v2

    const-string v9, "RTPDownlinkStatusJitter"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    nop

    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v2

    .line 449
    const-string v9, "RTPDownlinkStatusMeasuredPeriod"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    goto :goto_0

    .line 452
    .end local v0    # "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    .restart local v2    # "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v9, "diagandroid.phone.RTPULStat"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .end local v2    # "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    .restart local v0    # "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v2

    const-string v9, "RTPUplinkStatusLossRate"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object v2

    const-string v9, "RTPUplinkStatusDelay"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v2

    const-string v9, "RTPUplinkStatusJitter"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    nop

    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v2

    .line 456
    const-string v9, "RTPUplinkStatusMeasuredPeriod"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    .line 459
    .end local v0    # "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    .restart local v2    # "tmoEchoLocateIntentRTP":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 460
    .local v9, "sessionId":I
    invoke-direct {v1, v9}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getPhoneIdFromSessionId(I)I

    move-result v10

    .line 463
    .local v10, "phoneId":I
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v11

    .line 464
    .local v11, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v11, :cond_2

    .line 465
    const-string v0, "Can\'t get call num from sessionID"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 468
    :cond_2
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v12

    .line 469
    .local v12, "isEpdgCall":Z
    invoke-direct {v1, v12}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNetworkType(Z)Ljava/lang/String;

    move-result-object v6

    .line 470
    const-string v0, "VoiceAccessNetworkStateType"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-direct {v1, v10, v12}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v0

    const-string v13, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v2, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-direct {v1, v10, v12, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "VoiceAccessNetworkStateBand"

    invoke-virtual {v2, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    .line 475
    .end local v3    # "callNumber":Ljava/lang/String;
    .local v0, "callNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 476
    const-string v0, "null"

    move-object v3, v0

    goto :goto_1

    .line 475
    :cond_3
    move-object v3, v0

    .line 478
    .end local v0    # "callNumber":Ljava/lang/String;
    .restart local v3    # "callNumber":Ljava/lang/String;
    :goto_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v13, "echolocate_id"

    invoke-static {v0, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 480
    const-string v0, "EchoAppCallIdListForRTP is empty"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 483
    :cond_4
    const-string v0, "\\$"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 484
    .local v13, "individualCallIDForRTP":[Ljava/lang/String;
    const/4 v0, 0x0

    move-object v14, v5

    move v5, v0

    .local v5, "i":I
    .local v14, "rtpCallId":Ljava/lang/String;
    :goto_2
    array-length v0, v13

    const-string v15, "]"

    if-ge v5, v0, :cond_6

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .end local v4    # "echoAppCallIdListForRTP":Ljava/lang/String;
    .local v16, "echoAppCallIdListForRTP":Ljava/lang/String;
    const-string v4, "individualCallIDForRTP["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v13, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    aget-object v0, v13, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 489
    :try_start_0
    aget-object v0, v13, v5

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v14    # "rtpCallId":Ljava/lang/String;
    .local v0, "rtpCallId":Ljava/lang/String;
    move-object v14, v0

    goto :goto_3

    .line 492
    .end local v0    # "rtpCallId":Ljava/lang/String;
    .restart local v14    # "rtpCallId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 490
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 484
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    goto :goto_2

    .end local v16    # "echoAppCallIdListForRTP":Ljava/lang/String;
    .restart local v4    # "echoAppCallIdListForRTP":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v4

    .line 499
    .end local v4    # "echoAppCallIdListForRTP":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v13    # "individualCallIDForRTP":[Ljava/lang/String;
    .restart local v16    # "echoAppCallIdListForRTP":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 500
    const-string v0, "Can\'t find CallId from cache"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 503
    :cond_7
    const-string v0, "CallNumber"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v0, "CallID"

    invoke-virtual {v2, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "oemIntentTimestamp"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v4, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTmoEcholocateRTP :: dir ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] LossRate ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Jitter ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Measuredperiod ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Delay ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private sendTmoEcholocateSignallingMSG(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;)V
    .locals 20
    .param p1, "echoSignallingData"    # Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;

    .line 280
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getSignalMsg()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-result-object v1

    .line 281
    .local v1, "signalMsg":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.imsSignallingMessage"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "tmoEchoLocateIntentSignallingMSG":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 285
    .local v3, "callNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 286
    .local v4, "callId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCallId()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "sipCallId":Ljava/lang/String;
    const-string v6, ""

    .line 288
    .local v6, "peerNumber":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CSeq: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCseq()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "cseq":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getContents()Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "sdpContents":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 293
    const-string v8, "NA"

    goto :goto_0

    .line 295
    :cond_0
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getSDPContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 298
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getNetworkType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "VoiceAccessNetworkStateType"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getNetworkBand()Ljava/lang/String;

    move-result-object v9

    const-string v10, "VoiceAccessNetworkStateBand"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    nop

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getNetworkSignal()Ljava/lang/String;

    move-result-object v9

    .line 300
    const-string v10, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v9, "IMSSignallingMessageCallID"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v9, "IMSSignallingCSeq"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    nop

    .line 305
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v9

    .line 304
    const-string v10, "IMSSignallingMessageLine1"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    nop

    .line 307
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v9

    .line 306
    const-string v10, "IMSSignallingMessageOrigin"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v9, "NA"

    .line 310
    .local v9, "sdpReason":Ljava/lang/String;
    invoke-direct {v0, v7}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->isEndCall(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 311
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SENT"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CANCEL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 312
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BYE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 313
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "DeviceReason:Normal"

    goto :goto_1

    .line 314
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceReason:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object v9, v10

    goto :goto_3

    .line 316
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "NA"

    goto :goto_2

    .line 317
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reason:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    move-object v9, v10

    .line 321
    :cond_5
    :goto_3
    const-string v10, "IMSSignallingMessageReason"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v10, "IMSSignallingMessageSDP"

    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getTime()Ljava/lang/String;

    move-result-object v10

    const-string v11, "oemIntentTimestamp"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getSessionid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 326
    .local v10, "sessionId":I
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v11, v10}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v11

    .line 328
    .local v11, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 329
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    .line 332
    :cond_6
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "echolocate_id"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 335
    .local v12, "echoAppCallIdList":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " echoAppCallIdList ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] peer ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 335
    const-string v15, "EcholocateBroadcaster"

    invoke-static {v15, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {v0, v5, v12, v6, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->updateCallIDList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 339
    return-void

    .line 342
    :cond_7
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 343
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v16, v3

    .end local v3    # "callNumber":Ljava/lang/String;
    .local v16, "callNumber":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    aget-object v13, v13, v17

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 344
    .end local v16    # "callNumber":Ljava/lang/String;
    .local v13, "callNumber":Ljava/lang/String;
    move-object/from16 v17, v4

    .end local v4    # "callId":Ljava/lang/String;
    .local v17, "callId":Ljava/lang/String;
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 350
    .end local v17    # "callId":Ljava/lang/String;
    .local v3, "callId":Ljava/lang/String;
    invoke-direct {v0, v7}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->isEndCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 351
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "sipCallId":Ljava/lang/String;
    .end local v6    # "peerNumber":Ljava/lang/String;
    .local v18, "sipCallId":Ljava/lang/String;
    .local v19, "peerNumber":Ljava/lang/String;
    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 350
    .end local v18    # "sipCallId":Ljava/lang/String;
    .end local v19    # "peerNumber":Ljava/lang/String;
    .restart local v5    # "sipCallId":Ljava/lang/String;
    .restart local v6    # "peerNumber":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 354
    .end local v5    # "sipCallId":Ljava/lang/String;
    .end local v6    # "peerNumber":Ljava/lang/String;
    .restart local v18    # "sipCallId":Ljava/lang/String;
    .restart local v19    # "peerNumber":Ljava/lang/String;
    :goto_4
    const-string v4, "CallID"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v4, "CallNumber"

    invoke-virtual {v2, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v5, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTmoEcholocateSignallingMSG :: Origin ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Cseq ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCseq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Reason ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] callId_IMS ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] sdpContents ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 346
    .end local v13    # "callNumber":Ljava/lang/String;
    .end local v18    # "sipCallId":Ljava/lang/String;
    .end local v19    # "peerNumber":Ljava/lang/String;
    .local v3, "callNumber":Ljava/lang/String;
    .restart local v4    # "callId":Ljava/lang/String;
    .restart local v5    # "sipCallId":Ljava/lang/String;
    .restart local v6    # "peerNumber":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v3

    .end local v3    # "callNumber":Ljava/lang/String;
    .restart local v16    # "callNumber":Ljava/lang/String;
    const-string v3, "There is no related call ID"

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method private updateCallIDList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;)Z
    .locals 7
    .param p1, "sipCallId"    # Ljava/lang/String;
    .param p2, "echoAppCallIdList"    # Ljava/lang/String;
    .param p3, "peerNumber"    # Ljava/lang/String;
    .param p4, "signalMsg"    # Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 367
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ":"

    const/4 v2, 0x0

    const-string v3, "EcholocateBroadcaster"

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v0

    const-string v4, "RECEIVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v0

    const-string v4, "INVITE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 371
    .local v4, "nowMillis":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "id":Ljava/lang/String;
    const/4 v2, 0x4

    const/16 v6, 0xc

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeCallID id :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .end local v0    # "id":Ljava/lang/String;
    .end local v4    # "nowMillis":J
    goto/16 :goto_2

    .line 376
    :cond_0
    const-string v0, "Callid is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v2

    .line 380
    :cond_1
    const-string v0, "\\$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "individualCallID":[Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 386
    aget-object v5, v0, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set peerNumber["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] for CSFB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 391
    .end local v4    # "i":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 392
    aget-object v2, v0, v1

    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v0, v1

    .line 394
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v3

    invoke-static {p3, v3}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v0, v1

    .line 396
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 397
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 398
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
    .end local v0    # "individualCallID":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    :goto_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EcholocateBroadcaster"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 225
    const-string v0, "This message is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, "callId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    const-string v3, "Remove Call id on cache"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 216
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    .end local v0    # "callId":Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendTmoEcholocateSignallingMSG(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;)V

    .line 209
    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->onEcholocateEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 205
    nop

    .line 228
    :cond_4
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;->registerForEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkICDVerification()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mICDVResult:Z

    .line 187
    const-string v0, "EcholocateBroadcaster"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public stop()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;->unregisterForEcholocateEvent(Landroid/os/Handler;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mICDVResult:Z

    .line 193
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 196
    :cond_0
    const-string v0, "EcholocateBroadcaster"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method
