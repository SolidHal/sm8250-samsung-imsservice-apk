.class public final Lcom/sec/internal/constants/ims/entitilement/NSDSNamespaces$NSDSResponseMessage;
.super Ljava/lang/Object;
.source "NSDSNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NSDSResponseMessage"
.end annotation


# static fields
.field public static final RESPONSE_ACTIVATE_SIM_DEVICE:I = 0x67

.field public static final RESPONSE_CHECK_LOC_AND_TC:I = 0x68

.field public static final RESPONSE_DEACTIVATE_DEVICE:I = 0x6f

.field public static final RESPONSE_ENTITLMENT_CHECK:I = 0x65

.field public static final RESPONSE_REGISTER_PUSH_TOKEN:I = 0x70

.field public static final RESPONSE_REMOVE_PUSH_TOKEN:I = 0x71

.field public static final RESPONSE_RETRIEVE_AKA_TOKEN:I = 0x76

.field public static final RESPONSE_RETRIEVE_DEVICE_CONFIG:I = 0x66

.field public static final RESPONSE_UPDATE_DEVICE_CONFIG:I = 0x6d


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
