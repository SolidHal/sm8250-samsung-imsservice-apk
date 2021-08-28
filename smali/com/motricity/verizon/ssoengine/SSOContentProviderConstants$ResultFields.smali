.class public Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants$ResultFields;
.super Ljava/lang/Object;
.source "SSOContentProviderConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultFields"
.end annotation


# static fields
.field public static final IMEI:Ljava/lang/String; = "imei"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final MDN:Ljava/lang/String; = "mdn"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SIGNATURE_CREATE_TIME:Ljava/lang/String; = "signatureCreate"

.field public static final SIGNATURE_EXPIRE_TIME:Ljava/lang/String; = "signatureExpire"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscriptionId"

.field public static final TID:Ljava/lang/String; = "tid"

.field public static final TOKEN:Ljava/lang/String; = "token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
