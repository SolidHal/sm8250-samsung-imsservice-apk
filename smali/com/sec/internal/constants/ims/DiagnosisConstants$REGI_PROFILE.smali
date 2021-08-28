.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/DiagnosisConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REGI_PROFILE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum CDPN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum CHATBOT_COMMUNICATION:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum EC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum EUC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum FT:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum FT_HTTP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum GLS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum IM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum IS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum LASTSEEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum MMTEL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum MMTEL_VIDEO:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum OPTIONS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum PRESENCE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum PROFILE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum SLM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum SMSIP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum VS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 571
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 572
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "SMSIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->SMSIP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 573
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "MMTEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->MMTEL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 574
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "MMTEL_VIDEO"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->MMTEL_VIDEO:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 575
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "PRESENCE"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->PRESENCE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 576
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "IM"

    const/4 v8, 0x5

    const/16 v9, 0x10

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->IM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 577
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "FT"

    const/4 v10, 0x6

    const/16 v11, 0x20

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->FT:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 578
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "FT_HTTP"

    const/4 v11, 0x7

    const/16 v12, 0x40

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->FT_HTTP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 579
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "OPTIONS"

    const/16 v12, 0x80

    invoke-direct {v0, v1, v7, v12}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->OPTIONS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 580
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "IS"

    const/16 v12, 0x9

    const/16 v13, 0x100

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->IS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 581
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "VS"

    const/16 v13, 0xa

    const/16 v14, 0x200

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->VS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 582
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "EC"

    const/16 v14, 0xb

    const/16 v15, 0x400

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->EC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 583
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "GLS"

    const/16 v15, 0xc

    const/16 v14, 0x800

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->GLS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 584
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "SLM"

    const/16 v14, 0xd

    const/16 v15, 0x1000

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->SLM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 585
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "EUC"

    const/16 v15, 0xe

    const/16 v14, 0x2000

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->EUC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 586
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "PROFILE"

    const/16 v14, 0xf

    const/16 v15, 0x4000

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->PROFILE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 587
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "CDPN"

    const v15, 0x8000

    invoke-direct {v0, v1, v9, v15}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->CDPN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 588
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "LASTSEEN"

    const/16 v15, 0x11

    const/high16 v9, 0x10000

    invoke-direct {v0, v1, v15, v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->LASTSEEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 589
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "CHATBOT_COMMUNICATION"

    const/16 v9, 0x12

    const/high16 v15, 0x20000

    invoke-direct {v0, v1, v9, v15}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->CHATBOT_COMMUNICATION:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 570
    const/16 v1, 0x13

    new-array v1, v1, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    sget-object v15, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v15, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->SMSIP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->MMTEL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->MMTEL_VIDEO:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->PRESENCE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->IM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->FT:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->FT_HTTP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->OPTIONS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->IS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->VS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->EC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->GLS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->SLM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->EUC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->PROFILE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    aput-object v2, v1, v14

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->CDPN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->LASTSEEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    aput-object v0, v1, v9

    sput-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 594
    iput p3, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->mValue:I

    .line 595
    return-void
.end method

.method public static fromService(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
    .locals 5
    .param p0, "svc"    # Ljava/lang/String;

    .line 607
    invoke-static {}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 608
    .local v3, "profile":Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
    invoke-virtual {v3, p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->compare(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 609
    return-object v3

    .line 607
    .end local v3    # "profile":Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 613
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    return-object v0
.end method

.method private normalizeSvcName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "svc"    # Ljava/lang/String;

    .line 617
    const-string v0, "[\\W_]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 570
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
    .locals 1

    .line 570
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/String;)Z
    .locals 2
    .param p1, "svc"    # Ljava/lang/String;

    .line 602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->normalizeSvcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->normalizeSvcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getValue()I
    .locals 1

    .line 598
    iget v0, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->mValue:I

    return v0
.end method
