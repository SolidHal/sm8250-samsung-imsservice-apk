.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$Action;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final AKA_TOKEN_RETRIEVED:Ljava/lang/String; = "com.samsung.nsds.action.AKA_TOKEN_RETRIEVED"

.field public static final COMPLETED_ENTITLEMENT:Ljava/lang/String; = "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

.field public static final RECEIVED_SMS_NOTIFICATION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final TOKEN_VALIDITY_TIMEOUT:Ljava/lang/String; = "com.sec.imsservice.aec.action.TOKEN_VALIDITY_TIMEOUT"

.field public static final VERSION_VALIDITY_TIMEOUT:Ljava/lang/String; = "com.sec.imsservice.aec.action.VERSION_VALIDITY_TIMEOUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
