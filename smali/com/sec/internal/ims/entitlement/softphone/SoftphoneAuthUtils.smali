.class public final Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;
.super Ljava/lang/Object;
.source "SoftphoneAuthUtils.java"


# static fields
.field private static final AUTH_NO_ERROR:Ljava/lang/String; = "DB"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mProdAppKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProdAppSecretMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 26
    const-class v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    .line 35
    const-string v1, "SAMSUNG-SM-T817A"

    const-string/jumbo v2, "x1o8hkhkc9a4s0j3wctd9vpvy4fsbopr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    const-string v2, "SAMSUNG-SM-T377A"

    const-string/jumbo v3, "up3fpnsojlca8uggywdwgkyaqgmnsb3h"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    const-string v3, "SAMSUNG-SM-T807A"

    const-string v4, "b3wq9r826cwqsr2pptuha65rsovyvogb"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    const-string v4, "SAMSUNG-SM-T707A"

    const-string v5, "gbyqrqhf78wrpaf82qer2lnpivumunoc"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    const-string v5, "SAMSUNG-SM-T818A"

    const-string v6, "ejmp2k1chenktmtoe0cg97rkwg8vlogm"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    const-string v6, "SM-T837A"

    const-string v7, "mjoy9og9bd8bixjhxr1nannwgbalxudu"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    const-string v7, "SM-T387AA"

    const-string/jumbo v8, "oxqybwzqkuke37qbfxhemdphjn8fc4wr"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    const-string v8, "SM-T307U"

    const-string v9, "dyp77kwaauqxx6aalgpjjq3ctoq1dzwk"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    .line 48
    const-string/jumbo v9, "rao5cogniww5it7mufx57xfbfrhsutmn"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    const-string v1, "05wib7o909lwzlgjkvwad6kyr9photnb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    const-string v1, "iu0rqlat1tzdpb2b39txmopketfooofo"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    const-string v1, "ifnskvditiaasgwgfpaukrvx3eaqvh1r"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    const-string/jumbo v1, "t9yzb6hlaxkersol9us5lamrf1iiru6a"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    const-string/jumbo v1, "szyqu8oecuoikomhaooihdgbxrcjzfku"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    const-string v1, "hekgi2kbc21bvjpnkorin95iiog6c9ol"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    const-string/jumbo v1, "tuqlgat1pdra8x1mjxdnawt7psgxzsgo"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static createProfileFromTemplate(Landroid/content/Context;Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;Ljava/lang/String;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "identity"    # Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 164
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createProfileFromTemplate:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    return-object v1

    .line 169
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->getSoftphoneProfileList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 173
    .local v3, "profileTemplate":Lcom/sec/ims/settings/ImsProfile;
    sget-object v4, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profileTemplate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 176
    sget-object v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    .local v1, "template":Landroid/os/Parcel;
    invoke-virtual {v3, v1, v2}, Lcom/sec/ims/settings/ImsProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 180
    sget-object v2, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 181
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->getAddressList()Ljava/util/List;

    move-result-object v4

    .line 184
    .local v4, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 185
    invoke-virtual {v2, v4}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 186
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setAppId(Ljava/lang/String;)V

    .line 189
    invoke-static {p0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->getSccLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    sget-object v5, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inject profile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v2

    .line 197
    .end local v1    # "template":Landroid/os/Parcel;
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "profileTemplate":Lcom/sec/ims/settings/ImsProfile;
    .end local v4    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v1
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 138
    const-string v0, "Tablet"

    goto :goto_0

    :cond_0
    const-string v0, "Phone"

    .line 137
    :goto_0
    return-object v0
.end method

.method private static getSccLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "userid"    # I

    .line 142
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSccLabel()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 145
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 146
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v2, ""

    .line 147
    .local v2, "sccLabel":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 148
    sget-object v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSccLabel: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " records"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    const-string v3, "label"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_0

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 154
    :cond_0
    if-nez v2, :cond_1

    .line 155
    const-string v2, ""

    .line 158
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_2
    return-object v2
.end method

.method private static getSoftphoneProfileList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/settings/ImsProfile;>;"
    const-string v1, "content://com.sec.ims.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "mdmn_type=Softphone"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 123
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 124
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    :cond_0
    invoke-static {p0, v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getImsProfileFromRow(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 127
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_2
    return-object v0
.end method

.method public static processAkaAuthenticationResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;)Ljava/lang/String;
    .locals 4
    .param p0, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;

    .line 104
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processAkaAuthenticationResponse()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, ""

    .line 107
    .local v0, "akaResponse":Ljava/lang/String;
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;

    if-eqz v1, :cond_0

    .line 108
    const-string v0, "DB"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;->mAuthenticationResponse:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->convertByteToHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;->mCipherKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->convertByteToHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;->mIntegrityKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->convertByteToHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    return-object v0
.end method

.method public static setupAppKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "environment"    # I
    .param p1, "productName"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    .line 60
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "inestcjvum7fuv9ssvy9phlq1kwgzsjg"

    .line 59
    :goto_0
    return-object v0
.end method

.method public static setupAppSecret(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "environment"    # I
    .param p1, "productName"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "mkitwyspqpeszb34moy6ai7brzjvz7tm"

    .line 64
    :goto_0
    return-object v0
.end method

.method public static splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "nonce"    # Ljava/lang/String;

    .line 69
    const-string v0, ""

    .line 70
    .local v0, "rand":Ljava/lang/String;
    const-string v1, ""

    .line 71
    .local v1, "autn":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    .line 73
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v2, v4

    .line 74
    .local v2, "len":I
    sget-object v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rand length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v2, 0x4

    if-le v6, v7, :cond_0

    .line 77
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "nextPart":Ljava/lang/String;
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v2, v5, 0x2

    .line 79
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    sget-object v5, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autn length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v6    # "nextPart":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v2    # "len":I
    goto :goto_0

    .line 85
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wrong nonce format"

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 89
    .local v2, "randBytes":[B
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 90
    .local v5, "autnBytes":[B
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "randBase64":Ljava/lang/String;
    invoke-static {v5, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "autnBase64":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "base64 randStr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v8, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "base64 autnStr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v3

    const/4 v3, 0x1

    aput-object v7, v4, v3

    return-object v4
.end method
