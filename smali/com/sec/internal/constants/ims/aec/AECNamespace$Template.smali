.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$Template;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Template"
.end annotation


# static fields
.field public static final AEC_RESULT:Ljava/lang/String; = "aec_result_%s"

.field public static final AES_URL:Ljava/lang/String; = "https://aes.mnc%s.mcc%s.pub.3gppnetwork.org"

.field public static final USER_AGENT:Ljava/lang/String; = "PRD-TS43/%s %s/%s IMS-Entitlement/6 OS-Android/%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
