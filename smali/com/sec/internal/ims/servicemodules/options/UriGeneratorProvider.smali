.class public Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
.super Landroid/content/ContentProvider;
.source "UriGeneratorProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;,
        Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;,
        Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;,
        Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.urigenerator.provider"

.field private static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "US"

.field private static final DEFAULT_MCC:Ljava/lang/String; = "310"

.field private static final IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final INTENT_ACTION_DEFAULT_DATA_SUB_CHANGED:Landroid/content/IntentFilter;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final N_IMS:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static sMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mDDSIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;

.field private mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

.field private mMcc:Ljava/lang/String;

.field private mOwnAreaCode:Ljava/lang/String;

.field private mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

.field private mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->INTENT_ACTION_DEFAULT_DATA_SUB_CHANGED:Landroid/content/IntentFilter;

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 59
    const-string v1, "com.samsung.rcs.urigenerator.provider"

    const-string v2, "ims/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    const-string v0, "_id"

    const-string v1, "generated_uri"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 73
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    .line 75
    const-string v0, "310"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    .line 76
    const-string v0, "US"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
    .param p1, "x1"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->extractOwnAreaCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendCountryCodePrefix(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 4
    .param p1, "telNumber"    # Ljava/lang/String;
    .param p2, "defaultUri"    # Lcom/sec/ims/util/ImsUri;

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 97
    const-string v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 101
    .local v0, "telUri":Lcom/sec/ims/util/ImsUri;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC special number parsed result telUri:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " telNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0

    .line 105
    .end local v0    # "telUri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    return-object p2
.end method

.method private extractOwnAreaCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 250
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractOwnAreaCode phoneNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 252
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    .line 254
    const/4 v3, 0x0

    .line 256
    .local v3, "mccInt":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "extractOwnAreaCode. mcc is not int"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-static {v3}, Lcom/sec/internal/helper/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "tmpCountryCode":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractOwnAreaCode tmpCountryCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " operator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz v2, :cond_0

    .line 265
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    .line 268
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractOwnAreaCode MCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Country "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v2    # "tmpCountryCode":Ljava/lang/String;
    .end local v3    # "mccInt":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    .line 272
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    .line 273
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "extractOwnAreaCode: KOR operator not use OwnAreaCode"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 275
    :cond_2
    if-eqz p2, :cond_6

    .line 277
    :try_start_1
    const-string v2, "+1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    const/4 v0, 0x2

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_4

    .line 280
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    goto :goto_1

    .line 281
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_5

    .line 282
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    :cond_5
    :goto_1
    goto :goto_2

    .line 284
    :catch_1
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    .line 289
    .end local v0    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "delete not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getType not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "insert not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 3

    .line 81
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    .line 84
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    .line 85
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mDDSIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;

    .line 87
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mDDSIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->INTENT_ACTION_DEFAULT_DATA_SUB_CHANGED:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "telNumber":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v3, v7, v4

    const-string/jumbo v9, "query() - uri: %s, number: %s"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v5, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 118
    .local v5, "cat":I
    if-ne v5, v4, :cond_4

    .line 120
    const/4 v7, 0x0

    .line 122
    .local v7, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v9

    .line 121
    invoke-static {v9}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v9

    .line 124
    .local v9, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_0

    const-string v10, "+"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 125
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    .line 126
    const-string/jumbo v10, "support_7digit_msg"

    invoke-interface {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 127
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    sget-object v10, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "local number format, adding own area code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    sget-object v10, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "query()  mCountryCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " MCC "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " CountryCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 134
    .local v10, "telUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v11

    sget-object v12, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    if-ne v11, v12, :cond_1

    .line 135
    invoke-direct {v0, v3, v10}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->appendCountryCodePrefix(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 138
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v11

    .line 140
    .local v11, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    invoke-virtual {v11, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    .line 141
    .local v12, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v12, :cond_2

    .line 142
    sget-object v13, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "converting "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "to"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object v10, v12

    .line 147
    .end local v11    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .end local v12    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    if-eqz v10, :cond_3

    .line 148
    invoke-virtual {v10}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    :cond_3
    sget-object v11, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "query() - generated uri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v11, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v11, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 153
    .local v11, "mc":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Object;

    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v8

    aput-object v7, v6, v4

    .line 153
    invoke-virtual {v11, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 156
    return-object v11

    .line 159
    .end local v7    # "ret":Ljava/lang/String;
    .end local v9    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v10    # "telUri":Lcom/sec/ims/util/ImsUri;
    .end local v11    # "mc":Landroid/database/MatrixCursor;
    :cond_4
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Unsupported URI!"

    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "update not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
